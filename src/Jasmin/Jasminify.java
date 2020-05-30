import java.util.ArrayList;
/*
OPTIMIZATIONS
Constant push depends on the constant size, best instruction is selected
*/
public class Jasminify {
    public static int max_stack_index;
    public static int current_stack_index;
    public static String out;
    public static String out_temp;
    public static int control_index;
    public static int fields_index;
    public static boolean ref_loaded;
    
    public static void directwriteln(String in){
        out += in + "\n";
    }
    public static void directwrite(String in){
        out += in;
    }

    public static void writeln(String in){
        Jasminify.write(in + "\n");
    }
    public static void write(String in){
        //arraylength 1 -> 1
        //iaload/iastore 2 -> 1
        //iadd/and/mul/... 2 -> 1
        //dup 1 -> 2
        //getfield 1 -> 1
        //newarray 1 -> 1
        //putfield 2 -> 0

        //invokespecial, invokevirtual and invokestatic are parsed separately
        int a = Jasminify.current_stack_index;
        //loads and stores may be written sepparate
        if(in.startsWith("newarray") || in.startsWith("invoke")){
            //Do nothing :)
        }else if(in.startsWith("load") || in.startsWith("ldc ") || in.startsWith("iconst") || in.startsWith("bipush") || in.startsWith("sipush") || in.startsWith("aload") || in.startsWith("iload") || in.startsWith("dup") || in.startsWith("new")){
            Jasminify.current_stack_index += 1;
        }else{
            if(in.startsWith("ifge") || in.startsWith("ifeq") || in.startsWith("store") || in.startsWith("istore") || in.startsWith("pop") || in.startsWith("iadd") || in.startsWith("iand") || in.startsWith("imul") || in.startsWith("idiv") || in.startsWith("isub") || in.startsWith("iaload")){
                Jasminify.current_stack_index -= 1;
            }else 
            if(in.startsWith("putfield") || in.startsWith("if_")){
                Jasminify.current_stack_index -= 2;
            }else 
            if(in.startsWith("iastore")){
                Jasminify.current_stack_index -= 3;
            }
        }
        if(!in.startsWith(";")) {
            //Jasminify.directwriteln("; :"+(Jasminify.current_stack_index-a)+":"+Jasminify.current_stack_index+": "+in);
        }
        if(Jasminify.current_stack_index > Jasminify.max_stack_index){
            Jasminify.max_stack_index = Jasminify.current_stack_index;
        }
        out_temp += in;
    }
    public static void calculateMethodStack(ArrayList arguments_and_return, String type){
        //# arguments - return (if return non void)
        //The last element is the return, need to take care into account, even when is void.
        int a = Jasminify.current_stack_index;
        if(arguments_and_return.get(arguments_and_return.size()-1).equals("void")){
            Jasminify.current_stack_index -= arguments_and_return.size() - 1;
        }else{
            Jasminify.current_stack_index -= arguments_and_return.size() - 2;
        }
        //Also consumes reference
        if(!type.equals("static")){
            Jasminify.current_stack_index -= 1;
        }
        //Jasminify.directwriteln("; >> invoke "+type+" |"+arguments_and_return.size()+"| "+(Jasminify.current_stack_index-a)+": "+arguments_and_return.get(arguments_and_return.size()-1));

    }
    public static String getIndex(){
        control_index++;
        return ""+(control_index-1);
    }
    public static String getType(String type){
        String ret = "";
        switch(type){
            case "String[]":
                ret += "[";
            case "String":
                ret += "Ljava/lang/String;";
                break;
            case "int[]":
                ret += "[";
            case "int":
                ret += "I";
                break;
            case "void":
                ret += "V";
                break;
            case "boolean":
                ret += "Z";
                break;
            default:
                //throw new RuntimeException("Dunno how to jasminfy "+type);
                ret+=/*"Dunno how to jasminfy "+*/"L"+type+";";
        }
        return ret;
    }

    public static String getJasminSignature(Symbol s){
        ArrayList<String> types;
        String sig = "";
        int arg_amm;
        if(s.name.equals("main")){
            sig = "main([Ljava/lang/String;)";
        }else{
            types = (ArrayList<String>)s.data;
            arg_amm = types.size()-1;           //Last types is return type
            //Build signature
            sig = s.name+"(";
            for(int i = 0; i < arg_amm; i++){
                sig += Jasminify.getType(types.get(i));
            }
            sig += ")"+Jasminify.getType(types.get(arg_amm));
        }
        return sig;
    }

    public static void setJasminSignature(JasminMethod method_node, TreeNode class_node){
        method_node.jasmin_signature = Jasminify.getJasminSignature(method_node);
        method_node.jasmin_class = class_node.name;
    }
    
    public static void writeReturn(JasminMethod method_node, String return_type){
        Jasminify.current_stack_index -= 1;
        switch(return_type){
            case "int":
                Jasminify.writeln("ireturn");
                break;
            case "int[]":
                Jasminify.writeln("areturn");
                break;
            case "String":
                Jasminify.writeln("areturn");
                break;
            case "String[]":
                Jasminify.writeln("areturn");
                break;
            case "boolean":
                Jasminify.writeln("ireturn");
                break;
            case "void":
                Jasminify.writeln("return");
                break;
            default:                //If the return is none of the above, it MUST be an object reference
                Jasminify.writeln("areturn");
        }
    }

    public static void writePushConstant(int pushed_const){
        if(pushed_const == -1){
            Jasminify.writeln("iconst_m1");            
        }else if(pushed_const < 0){                     //All negatives except -1 (there are no negatives in Jmm but constant pushing might make negatives appear)
            writePushConstant(-1*pushed_const);
            Jasminify.writeln("ineg");
        }else if(pushed_const < 6){                     //From 0 to 5
            Jasminify.writeln("iconst_"+pushed_const);
        }else if(pushed_const < 128){
            Jasminify.writeln("bipush "+pushed_const); //less than 1 byte, load byte
        }else if(pushed_const < 32768){
            Jasminify.writeln("sipush "+pushed_const); //less than 2 bytes, load 2 bytes
        }else{
            Jasminify.writeln("ldc "+pushed_const);
        }
    }

    public static void handleVariable(Expression expr, String type){
        if(expr.used_symbol.Jvarindex < 0){
            throw new RuntimeException("Negative index is unacceptable "+expr.used_symbol.Jvarindex+" "+expr.used_symbol.name);
            //Analyzer.throwException(new UndeclaredException("Undefined data type "+type, n));
            //return;
        }
        Jasminify.writeln(";"+expr.used_symbol.name);
        switch((String)expr.used_symbol.data){
            case "boolean":
            case "int":
                Jasminify.write("i");

                break;
            default:
                Jasminify.write("a");
        }
        Jasminify.write(type);
        if(expr.used_symbol.Jvarindex < 4){
            Jasminify.writeln("_"+expr.used_symbol.Jvarindex+" ;"+expr.used_symbol.hashCode());
        }else{
            Jasminify.writeln(" "+expr.used_symbol.Jvarindex+" ;"+expr.used_symbol.hashCode());
        }
    }

    public static void storeVariable(Expression expr, JasminMethod method){
        if(expr.used_symbol.Jvarindex == -1){
            expr.used_symbol.Jvarindex = method.locals_index++;
        }
        handleVariable(expr, "store");

    }

    public static void loadVariable(Expression expr){
        if(expr.used_symbol.Jvartype == null){
            System.out.println("SHOULD NOT HAPPEN "+expr.used_symbol.name);
        }
        if(expr.used_symbol.Jvartype.equals("class")){
            Jasminify.writeln("aload_0 ;this");
            Jasminify.writeln("getfield "+expr.used_symbol.Jfielddsignature);    
        }else{
            handleVariable(expr, "load");
        }
    }
    /**
     * Parses an expression and places the result in the last stack position
     * @param str
     * @param scope
     */
    public static void writeExpression(Expression expr, JasminMethod method){
        Expression helper0;
        Expression helper1;
        String jump_ind;
        //Jasminify.writeln("; "+expr.expression_type);
        switch(expr.expression_type){
            case Expression.t_constant:
                switch(expr.return_type){
                    case "int":
                        Jasminify.writePushConstant((Integer)expr.value);
                        break;
                    case "boolean":
                        if((Boolean)expr.value){
                            Jasminify.writePushConstant(1);
                        }else{
                            Jasminify.writePushConstant(0);
                        }
                        break;
                    default:
                        Jasminify.writeln("CANT GET COSNTANT TYPE YET ");
                }
                break;
            case Expression.t_sub:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                Jasminify.writeln("isub");
                break;
            case Expression.t_add:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                Jasminify.writeln("iadd");
                break;
            case Expression.t_div:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                Jasminify.writeln("idiv");
                break;
            case Expression.t_mul:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                Jasminify.writeln("imul");
                break;
            case Expression.t_lessthan:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                jump_ind = Jasminify.getIndex();
                Jasminify.writeln("if_icmpge istrue_"+jump_ind+" ;if");
                Jasminify.writeln("iconst_1");
                Jasminify.writeln("goto endcond_"+jump_ind);
                Jasminify.writeln("istrue_"+jump_ind+":");
                Jasminify.writeln("iconst_0");
                Jasminify.writeln("endcond_"+jump_ind+":");
                //Only one of these goes into the stack, but it's hard to detect that elsewhere
                Jasminify.current_stack_index -= 1;
                break;
            case Expression.t_and:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                Jasminify.writeln("iand");
                break;
            case Expression.t_return:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                //Return
                method.returned = true;
                Jasminify.writeReturn(method, expr.return_type);
                break;
            case Expression.t_int_array:
                if(expr.nested_structures.size() != 1){
                    Jasminify.writeln("WRONG SIZE "+expr.nested_structures.size());
                }
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeln("newarray int");
                break;
            case Expression.t_method_access:
                if(expr.is_new){
                    Jasminify.writeln("new "+expr.used_symbol.name);
                    Jasminify.writeln("dup");
                    Jasminify.writeln("invokespecial "+expr.used_symbol.name+"/<init>()V");
                    Jasminify.current_stack_index -= 1;
                    //Reference + # arguments - return (if return non void)
                    //Currently not accepting arguments for custructors so stack remains the same
                    for(Structure another_method : expr.nested_structures){
                        Jasminify.ref_loaded = true;
                        //helper0 = (Expression)expr.nested_structures.get(0);
                        helper0 = (Expression)another_method;
                        for(Structure str : helper0.nested_structures){
                            writeExpression((Expression)str, method);
                        }
                        Jasminify.writeExpression(helper0, method);
                    }
                }else{
                    //There are no static methods being evaluated
                    //if(method.type == Symbol.t_method_static){}
                    
                    //IF IN INSTANCE AND DIRECT ACCESS

                    if(!expr.is_new && expr.expression_type == Expression.t_method_access && expr.used_symbol.type == Symbol.t_method_instance){
                        //Jasminify.writeln("; "+Jasminify.ref_loaded);
                        if(!Jasminify.ref_loaded){
                            Jasminify.writeln("aload_0 ;this");
                            Jasminify.ref_loaded = false;
                        }
                        /*for(Structure str : expr.nested_structures){
                            writeExpression((Expression)str, method);
                        }*/
                    }
                    //IF IN STATIC
                    if(expr.used_symbol.type == Symbol.t_method_instance){
                        if(expr.used_symbol instanceof JasminMethod){
                            Jasminify.writeln("invokevirtual "+((JasminMethod)expr.used_symbol).jasmin_class+"/"+((JasminMethod)expr.used_symbol).jasmin_signature);
                            Jasminify.calculateMethodStack((ArrayList)((JasminMethod)expr.used_symbol).data, "virtual");
                        }else{      //Only happens for constructors
                            Analyzer.throwException(new RuntimeException("Constructors requires new keyword"));
                        }
                    }else{
                        Jasminify.writeln("invokestatic "+((JasminMethod)expr.used_symbol).jasmin_class+"/"+((JasminMethod)expr.used_symbol).jasmin_signature);
                        Jasminify.calculateMethodStack((ArrayList)((JasminMethod)expr.used_symbol).data, "static");

                    }
                    //invokevirtual Simple/add(II)I
                }
                break;
            case Expression.t_access_length:
                //arraylength
                //Jasminify.writeln(";>>>"+expr.used_symbol.name);

                Jasminify.writeln("invokevirtual "+((JasminMethod)expr.used_symbol)+"/"+"length()I");
                Jasminify.calculateMethodStack((ArrayList)((JasminMethod)expr.used_symbol).data, "virtual");
                break;
            case Expression.t_access:
                switch(expr.nested_structures.size()){
                    case 0:
                        Jasminify.loadVariable(expr);
                        break;
                    default:
                    
                        if(expr.used_symbol == null){                   //It's a this access
                            if(method.type == Symbol.t_method_static){
                                Analyzer.throwException(new RuntimeException("Can't access \"this\" from a static method"));
                            }
                            Jasminify.writeln("aload_0 ;this");
                            Jasminify.ref_loaded = true;
                        }else if(expr.used_symbol.type != Symbol.t_class){    //Instances and arrays need to be loaded
                            Jasminify.ref_loaded = true;
                            Jasminify.loadVariable(expr);
                        }
                        
                        for(Structure call: expr.nested_structures){
                            helper0 = (Expression)call;
                            switch(helper0.expression_type){
                                case Expression.t_method_access:        //Method access (through an instance variable or static class)                        
                                    //Load arguments
                                    for(Structure str : helper0.nested_structures){
                                        writeExpression((Expression)str, method);
                                    }
                                    
                                    if(helper0.used_symbol.type != Symbol.t_class){
                                        writeExpression(helper0, method);
                                    }
                                    break;
                                case Expression.t_array_access:
                                    Jasminify.writeExpression((Expression)helper0.nested_structures.get(0), method);
                                    Jasminify.writeln("iaload");
                                    break;
                                case Expression.t_access_length:
                                    Jasminify.writeln("arraylength");
                                    break;
                                default:
                                    Jasminify.writeln("; UNEXPECTED ACCESS TYPE "+helper0.expression_type);
                            }
                        }

                        break;
                }
                break;
            case Expression.t_array_access:
                throw new RuntimeException("Array access at this point should not happen");

            case Expression.t_negate:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                jump_ind = Jasminify.getIndex();
                Jasminify.writeln("ifeq istrue_"+jump_ind+" ;if");
                Jasminify.writeln("iconst_0");
                Jasminify.writeln("goto endcond_"+jump_ind);
                Jasminify.writeln("istrue_"+jump_ind+":");
                Jasminify.writeln("iconst_1");
                Jasminify.writeln("endcond_"+jump_ind+":");
                //Only one of these goes into the stack, but it's hard to detect that elsewhere
                Jasminify.current_stack_index -= 1;
                break;
            default:
                Jasminify.writeln("CANNOT PARSE "+expr.expression_type+" YET");
        }
    }
    public static void evalCond(Expression expr, String jump_ind, JasminMethod method, String type){
        if(expr.expression_type == Expression.t_lessthan){                                   //For a single less than, we can do this directly
            //Optimize with iflt or if_icmpge
            Expression helper1 = (Expression)expr.nested_structures.get(1);
            Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
            if(helper1.expression_type == Expression.t_constant && helper1.return_type == "int" && (Integer)helper1.value == 0){
                Jasminify.write("ifge else_"+jump_ind);
            }else{
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                Jasminify.write("if_icmpge else_"+jump_ind);
            }
        }else{                                                                                  //For Boolean value of false (int value of 0)
            Jasminify.writeExpression(expr, method);
            Jasminify.write("ifeq else_"+jump_ind);    
        }
        Jasminify.writeln(type);
    }
    public static void writeStructure(Structure struct, JasminMethod method){
        Expression helper0;
        Expression helper1;
        Expression helper2;
        String jump_ind;
        if(Jasminify.current_stack_index > Jasminify.max_stack_index){
            Jasminify.max_stack_index = Jasminify.current_stack_index;
        }
        if(Jasminify.current_stack_index != 0){
            throw new RuntimeException("Stack not 0: "+Jasminify.current_stack_index);
        }
        //Jasminify.directwriteln("; STACK NOT 0 : "+Jasminify.current_stack_index);
        
        switch(struct.type){
            case Structure.t_attribution:
                switch(struct.nested_structures.size()){
                    case 2:  //Simple variable attribution
                        helper0 = (Expression)struct.nested_structures.get(0);
                        helper1 = (Expression)struct.nested_structures.get(1);
                        
                        if(helper0.used_symbol.Jvartype.equals("class")){
                            Jasminify.writeln("aload_0 ;this");
                            Jasminify.writeExpression(helper1, method);
                            Jasminify.writeln("putfield "+helper0.used_symbol.Jfielddsignature);
                        }else{
                            //Optimize with iinc
                            int constant_val = -1;
                            if(helper1.expression_type == Expression.t_add && helper1.nested_structures.size() == 2){
                                Expression lhs = (Expression)helper1.nested_structures.get(0);
                                Expression rhs = (Expression)helper1.nested_structures.get(1);
                                if(lhs.expression_type == Expression.t_access
                                && lhs.used_symbol == helper0.used_symbol
                                && rhs.expression_type == Expression.t_constant
                                && rhs.return_type == "int"){
                                    constant_val = (Integer)rhs.value;
                                }else
                                if(rhs.expression_type == Expression.t_access
                                && rhs.used_symbol == helper0.used_symbol
                                && lhs.expression_type == Expression.t_constant
                                && lhs.return_type == "int"){
                                    constant_val = (Integer)lhs.value;
                                }
                            }
                            if(constant_val != -1){
                                Jasminify.writeln("iinc "+helper0.used_symbol.Jvarindex+" "+constant_val+" ;"+helper0.used_symbol.hashCode());
                            }else{
                                Jasminify.writeExpression(helper1, method);
                                if(helper0.expression_type == Expression.t_access){
                                    Jasminify.storeVariable(helper0, method);
                                }else{
                                    Jasminify.writeln("\t\tCANT PARSE TYPE "+helper0.type+" YET");
                                }
                            }
                        }
                        break;
                    case 3:
                        helper0 = (Expression)struct.nested_structures.get(0);
                        helper1 = (Expression)struct.nested_structures.get(1);
                        helper2 = (Expression)struct.nested_structures.get(2);
                        //Load arrayref
                        Jasminify.loadVariable(helper0);
                        /*if(helper0.expression_type == Expression.t_access){
                        }else{
                            Jasminify.writeln(";\t\tCANT PARSE TYPE "+helper0.expression_type+" YET");
                        }*/
                        //Load index
                        Jasminify.writeExpression((Expression)helper1.nested_structures.get(0), method);
                        //Load value
                        Jasminify.writeExpression(helper2, method);
                        Jasminify.writeln("iastore");

                        break;
                    default:
                        Jasminify.writeln("; WEIRD NUMBER OF CHILDREN "+struct.nested_structures.size()+"");
                }
                break;
            case Structure.t_expression:
                //Little hack to find directly called methods
                helper0 = (Expression)struct;
                if(helper0.expression_type == Expression.t_method_access){
                    if(method.type == Symbol.t_method_static){
                        Analyzer.throwException(new RuntimeException("Non static method access from a static method"));
                    }
                    if(!helper0.is_new && helper0.used_symbol.type == Symbol.t_method_instance){
                        //Jasminify.writeln("; "+Jasminify.ref_loaded);
                        if(!Jasminify.ref_loaded){
                            Jasminify.writeln("aload_0 ;this");
                            Jasminify.ref_loaded = false;
                        }
                        for(Structure str : helper0.nested_structures){
                            writeExpression((Expression)str, method);
                        }
                    }
                    //IF IN STATIC
                    if(helper0.used_symbol.type == Symbol.t_method_instance){
                        Jasminify.writeln("invokevirtual "+((JasminMethod)helper0.used_symbol).jasmin_class+"/"+((JasminMethod)helper0.used_symbol).jasmin_signature);
                        Jasminify.calculateMethodStack((ArrayList)((JasminMethod)helper0.used_symbol).data, "virtual");
                    }else{
                        Jasminify.writeln("invokestatic "+((JasminMethod)helper0.used_symbol).jasmin_class+"/"+((JasminMethod)helper0.used_symbol).jasmin_signature);
                        Jasminify.calculateMethodStack((ArrayList)((JasminMethod)helper0.used_symbol).data, "static");
                    }
                }else{
                    Jasminify.writeExpression(helper0, method);
                }
                //Take care of unused returns
                if((helper0.expression_type == Expression.t_method_access || helper0.expression_type == Expression.t_access) && !helper0.return_type.equals("void")){
                    Jasminify.writeln("pop");
                }
                break;
            case Structure.t_while:
                jump_ind = Jasminify.getIndex();
                Jasminify.writeln("while_"+jump_ind+":");
                Jasminify.evalCond((Expression)struct.nested_structures.get(0), jump_ind, method, " ;while");
                Jasminify.writeln("");

                for(int i = 1; i < struct.nested_structures.size(); i++){
                    Jasminify.writeStructure(struct.nested_structures.get(i), method);
                }
                Jasminify.writeln("goto while_"+jump_ind);

                Jasminify.writeln("else_"+jump_ind+":");
                
                break;
            case Structure.t_if:
                jump_ind = Jasminify.getIndex();
                Jasminify.evalCond((Expression)struct.nested_structures.get(0), jump_ind, method, " ;if");
                
                for(Structure if_bd : struct.nested_structures.get(1).nested_structures){
                    Jasminify.writeStructure(if_bd, method);
                }
                //Mandatory but empty else optimization
                if(struct.nested_structures.get(2).nested_structures.size() == 0){
                    Jasminify.writeln("else_"+jump_ind+":");
                }else{
                    Jasminify.writeln("goto endif_"+jump_ind);
                    Jasminify.writeln("else_"+jump_ind+":");
                    for(Structure if_bd : struct.nested_structures.get(2).nested_structures){
                        Jasminify.writeStructure(if_bd, method);
                    }
                    Jasminify.writeln("endif_"+jump_ind+":");
                }
                
                break;
            default:
        }
        //Sometimes, references may be loaded but not used by a method, so we need to reset ref_loaded
        Jasminify.ref_loaded = false;
        
        Jasminify.writeln("");
    }

    public static void writeMethod(JasminMethod method_node){
        int arg_amm;
        int start;
        
        if(method_node.name.equals("main")){    //Generate normal/main method head
            Jasminify.directwriteln(".method public static main([Ljava/lang/String;)V ;0");
            arg_amm = 0;
        }else{
            if(method_node.type == Symbol.t_method_instance){
                Jasminify.directwrite(".method public ");
            }else{
                Jasminify.directwrite(".method public static ");
            }
            arg_amm = ((ArrayList<String>)method_node.data).size()-1;           //Last types is return type
            Jasminify.directwriteln(method_node.jasmin_signature+" ;"+(arg_amm));  //Give optimizer method argument ammount
        }

        Jasminify.out_temp = "";
        Jasminify.current_stack_index = 0;
        Jasminify.max_stack_index = 0;

        method_node.locals_index = arg_amm+1;   //Locals begin after the arguments
        if(method_node.type == Symbol.t_method_instance){
            start = 1;      //Instance methods have at 0 the This and at 1 the first local variable
        }else{
            start = 0;      //Static methods have at 0 the first local variable
        }
        method_node.variables = (Symbol[])(method_node.table.symbols.values().toArray(new Symbol[0]));
        
        for(int i = start, j = 0; i < arg_amm; i++, j++){   //Setup argument variable indexes
            method_node.variables[j].Jvarindex = i;
        }

        for(Structure s: method_node.structures){           //Parse inner structures
            Jasminify.writeStructure(s, method_node);
            Jasminify.writeln("");
        }

        for(int i = start, j = 0; i < method_node.variables.length; i++, j++){  //Free all variable indexes
            method_node.variables[j].Jvarindex = -1;
        }
        if(method_node.returned == false){
            Jasminify.writeReturn(method_node, "void");
        }

        Jasminify.directwriteln(".limit stack "+(Jasminify.max_stack_index));//                                    NEED TO CALCULATE DEEPEST DEPTH
        Jasminify.directwriteln(".limit locals "+(1+arg_amm+method_node.table.getSize()));    //this + arguments + declared local variables
        Jasminify.directwriteln(out_temp);
        Jasminify.directwriteln(".end method");
    }
    static void start(TreeNode root, TreeNode class_node){
        if(class_node == null){
            throw new RuntimeException("No class found");
        }
        Jasminify.out = "";
        Jasminify.max_stack_index = 0;
        Jasminify.current_stack_index = 0;
        Jasminify.fields_index = 0;
        Jasminify.control_index = 0;

        Jasminify.directwriteln(".class public "+class_node.name);
        if(class_node.data == null){
            Jasminify.directwriteln(".super java/lang/Object");
        }else{
            Jasminify.directwriteln(".super "+class_node.data);
        }
        //Set fields
        for(Symbol symb : class_node.table.symbols.values()){
            if(symb.type == Symbol.t_variable_init || symb.type == Symbol.t_variable_ninit){
                symb.Jfielddsignature = class_node.name+"/f_"+symb.name+" "+getType((String)symb.data);
                Jasminify.directwriteln(".field public f_"+symb.name+" "+getType((String)symb.data));
            }
        }

        Jasminify.directwriteln(".method <init>()V");
        Jasminify.directwriteln("aload_0 ;this");
        if(class_node.data == null){
            Jasminify.directwriteln("invokenonvirtual java/lang/Object/<init>()V");
        }else{
            Jasminify.directwriteln("invokenonvirtual "+class_node.data+"/<init>()V");
        }
        Jasminify.directwriteln("return");
        Jasminify.directwriteln(".end method");
        //Set method jasmin signatures
        for(TreeNode method: class_node.children){
            Jasminify.setJasminSignature((JasminMethod)method, class_node);
        }
        //Set import method jasmin signatures
        for(TreeNode other_class_node: root.children){
            if(other_class_node.name.equals(class_node.name)){
                continue;
            }

            for(TreeNode method: other_class_node.children){
                Jasminify.directwriteln("; "+method.name+"/"+other_class_node.name);
                Jasminify.setJasminSignature((JasminMethod)method, other_class_node);
            }
        }

        for(TreeNode method: class_node.children){
            Jasminify.writeMethod((JasminMethod)method);
        }
    }
}