import java.util.ArrayList;
/*
OPTIMIZATIONS
Constant push depends on the constant size, best instruction is selected
*/
public class Jasminify {
    public static int stack_index;
    public static String out;
    public static int control_index;
    public static int fields_index;
    public static void writeln(String in){
        out += in + "\n";
    }
    public static void write(String in){
        out += in;
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
                ret += "I";
                break;
            default:
                //throw new RuntimeException("Dunno how to jasminfy "+type);
                ret+=/*"Dunno how to jasminfy "+*/"[L"+type+";";
                //rec([LSimple;)[LSimple;
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
        switch(return_type){
            case "int":
                Jasminify.writeln("ireturn");
                break;
            case "int[]":
                //Jasminify.writeln("INT[]");
                Jasminify.writeln("areturn");
                break;
            case "String":
                //Jasminify.writeln("STR");
                Jasminify.writeln("areturn");
                break;
            case "String[]":
                //Jasminify.writeln("STR[]");
                Jasminify.writeln("areturn");
                break;
            case "boolean":
                //Jasminify.writeln("BOOL");
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
        }else if(pushed_const < 0){                     //All negatives except -1
            Jasminify.writeln("Dont know how to push: "+pushed_const);
        }else if(pushed_const < 6){                     //From 0 to 5
            Jasminify.writeln("iconst_"+pushed_const);
        }else if(pushed_const < 256){
            Jasminify.writeln("bipush "+pushed_const); //less than 1 byte, load byte
        }else if(pushed_const < 65536){
            Jasminify.writeln("sipush "+pushed_const); //less than 2 bytes, load 2 bytes
        }else{
            Jasminify.writeln("ldc "+pushed_const);
        }
    }

    public static void handleVariable(Expression expr, String type){
        if(expr.used_symbol.Jvarindex < 0){
            throw new RuntimeException("Negative index is unacceptable "+expr.used_symbol.Jvarindex);
        }
        switch((String)expr.used_symbol.data){
            case "int":
                Jasminify.write("i");

                break;
            default:
                Jasminify.write("a");
        }
        Jasminify.write(type);
        if(expr.used_symbol.Jvarindex < 4){
            Jasminify.writeln("_"+expr.used_symbol.Jvarindex+"\t\t;"+expr.used_symbol.name);
        }else{
            Jasminify.writeln(" "+expr.used_symbol.Jvarindex+"\t\t;"+expr.used_symbol.name);
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
            System.out.println("WTFWTF "+expr.used_symbol.name);
        }
        if(expr.used_symbol.Jvartype.equals("class")){
            Jasminify.writeln("aload_0");
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
        Jasminify.writeln("; "+expr.expression_type);
        switch(expr.expression_type){
            case Expression.t_constant:
                //if(expr.return_type == "int"){
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
                Jasminify.writeln("if_icmpgt is_false_"+jump_ind);
                Jasminify.writeln("iconst_1");
                Jasminify.writeln("goto end_cond"+jump_ind);
                Jasminify.writeln("is_false_"+jump_ind+":");
                Jasminify.writeln("iconst_0");
                Jasminify.writeln("end_cond"+jump_ind+":");
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
                    //Jasminify.writeln("astore ");
                    Jasminify.writeln("invokespecial "+expr.used_symbol.name+"/<init>()V");

                }else{
                    Jasminify.writeln(";>>"+expr.used_symbol.name);

                    Jasminify.writeln("invokevirtual "+((JasminMethod)expr.used_symbol).jasmin_class+"/"+((JasminMethod)expr.used_symbol).jasmin_signature);
                    //invokevirtual Simple/add(II)I
                }
                break;
            case Expression.t_access_length:
                //arraylength
                Jasminify.writeln(";>>>"+expr.used_symbol.name);

                Jasminify.writeln("invokevirtual "+((JasminMethod)expr.used_symbol)+"/"+"length()I");
                break;
            case Expression.t_access:
                switch(expr.nested_structures.size()){
                    case 0:
                        Jasminify.loadVariable(expr);
                        break;
                    default:
                        if(expr.used_symbol == null){
                            break;
                        }
                        if(expr.used_symbol.type != Symbol.t_class){    //Instances and arrays need to be loaded
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
                                    
                                    if(expr.used_symbol.type != Symbol.t_class){
                                        writeExpression(helper0, method);
                                    }else{      //Is static, must be from import
                                        Jasminify.writeln("invokestatic "+expr.used_symbol.name+"/"+getJasminSignature(helper0.used_symbol));
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
                Jasminify.writeln("NOT supposed to happen");
                /*helper0 = (Expression)expr.nested_structures.get(0);
                helper1 = (Expression)expr.nested_structures.get(1);

                Jasminify.loadVariable(helper0);
                Jasminify.writeExpression(helper1, method);
                Jasminify.writeln("iaload");*/
                break;
            case Expression.t_negate:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeln("ineg");
                break;
            default:
                Jasminify.writeln("CANNOT PARSE "+expr.expression_type+" YET");
        }
    }
    public static void evalCond(Expression expr, String jump_ind, JasminMethod method){
        if(expr.expression_type == Expression.t_lessthan){                                   //For a single less than, we can do this directly
            Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
            Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
            Jasminify.writeln("if_icmpge else_"+jump_ind);
        }else{                                                                                  //For Boolean value of false (int value of 0)
            Jasminify.writeExpression(expr, method);
            Jasminify.writeln("ifeq else_"+jump_ind);    
        }
    }
    public static void writeStructure(Structure struct, JasminMethod method){
        Expression helper0;
        Expression helper1;
        Expression helper2;
        String jump_ind;
        switch(struct.type){
            case Structure.t_attribution:
                switch(struct.nested_structures.size()){
                    case 2:  //Simple variable attribution
                        helper0 = (Expression)struct.nested_structures.get(0);
                        helper1 = (Expression)struct.nested_structures.get(1);
                        
                        if(helper0.used_symbol.Jvartype.equals("class")){
                            Jasminify.writeln("aload_0");
                            Jasminify.writeExpression(helper1, method);
                            Jasminify.writeln("putfield "+helper0.used_symbol.Jfielddsignature);
                        }else{
                            Jasminify.writeExpression(helper1, method);
                            if(helper0.expression_type == Expression.t_access){
                                Jasminify.storeVariable(helper0, method);
                            }else{
                                Jasminify.writeln("\t\tCANT PARSE TYPE "+helper0.type+" YET");
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
                Jasminify.writeExpression((Expression)struct, method);
                break;
            case Structure.t_while:
                jump_ind = Jasminify.getIndex();
                Jasminify.writeln("while_"+jump_ind+":");
                Jasminify.evalCond((Expression)struct.nested_structures.get(0), jump_ind, method);
                Jasminify.writeln("");

                for(int i = 1; i < struct.nested_structures.size(); i++){
                    Jasminify.writeStructure(struct.nested_structures.get(i), method);
                }
                Jasminify.writeln("goto while_"+jump_ind);

                Jasminify.writeln("else_"+jump_ind+":");
                
                break;
            case Structure.t_if:
                jump_ind = Jasminify.getIndex();
                Jasminify.evalCond((Expression)struct.nested_structures.get(0), jump_ind, method);
                
                for(Structure if_bd : struct.nested_structures.get(1).nested_structures){
                    Jasminify.writeStructure(if_bd, method);
                }
                Jasminify.writeln("goto endif_"+jump_ind);

                Jasminify.writeln("else_"+jump_ind+":");
                Jasminify.writeln("; "+struct.nested_structures.get(2).nested_structures.size());
                for(Structure if_bd : struct.nested_structures.get(2).nested_structures){
                    Jasminify.writeStructure(if_bd, method);
                }
                Jasminify.writeln("endif_"+jump_ind+":");
                break;
            default:
        }
        Jasminify.writeln("");
    }

    public static void writeMethod(JasminMethod method_node){
        int arg_amm;
        int start;
        
        if(method_node.name.equals("main")){    //Generate normal/main method head
            Jasminify.writeln(".method public static main([Ljava/lang/String;)V");
            arg_amm = 1;
        }else{
            if(method_node.type == Symbol.t_method_instance){
                Jasminify.write(".method public ");
            }else{
                Jasminify.write(".method public static ");
            }
            arg_amm = ((ArrayList<String>)method_node.data).size()-1;           //Last types is return type
            Jasminify.writeln(method_node.jasmin_signature);
        }

        method_node.locals_index = arg_amm+1;   //Locals begin after the arguments
        Jasminify.writeln(".limit stack 99");//                                    NEED TO CALCULATE DEEPEST DEPTH
        Jasminify.writeln(".limit locals "+(1+arg_amm+method_node.table.getSize()));    //this + arguments + declared local variables
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
        Jasminify.writeln(".end method");
    }
    static void start(TreeNode root, TreeNode class_node){
        if(class_node == null){
            throw new RuntimeException("No class found");
        }
        Jasminify.out = "";

        Jasminify.stack_index = 0;
        Jasminify.fields_index = 0;
        Jasminify.control_index = 0;

        Jasminify.writeln(".class public "+class_node.name);
        if(class_node.data == null){
            Jasminify.writeln(".super java/lang/Object");
        }else{
            Jasminify.writeln(".super "+class_node.data);
        }
        //Set fields
        for(Symbol symb : class_node.table.symbols.values()){
            if(symb.type == Symbol.t_variable_init || symb.type == Symbol.t_variable_ninit){
                symb.Jfielddsignature = class_node.name+"/f_"+symb.name+" "+getType((String)symb.data);
                Jasminify.writeln(".field public f_"+symb.name+" "+getType((String)symb.data));
            }
        }

        Jasminify.writeln(".method <init>()V");
        Jasminify.writeln("aload_0");
        if(class_node.data == null){
            Jasminify.writeln("invokenonvirtual java/lang/Object/<init>()V");
        }else{
            Jasminify.writeln("invokenonvirtual "+class_node.data+"/<init>()V");
        }
        Jasminify.writeln("return");
        Jasminify.writeln(".end method");
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
                Jasminify.writeln("; "+method.name+"/"+other_class_node.name);
                Jasminify.setJasminSignature((JasminMethod)method, other_class_node);
            }
        }

        for(TreeNode method: class_node.children){
            Jasminify.writeMethod((JasminMethod)method);
        }
    }
}