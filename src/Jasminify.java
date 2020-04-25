import java.util.ArrayList;
/*
OPTIMIZATIONS
Constant push depends on the constant size, best instruction is selected


*/
public class Jasminify {
    public static int stack_index;

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
                break;
            default:
                throw new RuntimeException("Dunno how to jasminfy "+type);
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

    public static void setJasminSignature(JasminMethod method_node){
        method_node.jasmin_signature = Jasminify.getJasminSignature(method_node);
    }
    
    public static void writeReturn(JasminMethod method_node, String return_type){
        switch(return_type){
            case "int":
                System.out.println("ireturn");
                break;
            case "int[]":
                System.out.println("");
            case "String":
                System.out.println("");
            case "String[]":
                System.out.println("");
            case "boolean":
                System.out.println("");
            case "void":
                System.out.println("return");
                break;
            default:                //If the return is none of the above, it MUST be an object reference
                System.out.println("areturn");
        }
    }

    public static void writePushConstant(int pushed_const){
        if(pushed_const == -1){
            System.out.println("iconst_m1");            
        }else if(pushed_const < 0){                     //All negatives except -1
            System.out.println("Dont know how to push: "+pushed_const);
        }else if(pushed_const < 6){                     //From 0 to 5
            System.out.println("iconst_"+pushed_const);
        }else if(pushed_const < 256){
            System.out.println("bipush "+pushed_const); //less than 1 byte, load byte
        }else if(pushed_const < 65536){
            System.out.println("sipush "+pushed_const); //less than 2 bytes, load 2 bytes
        }else{
            System.out.println("ldc "+pushed_const);
        }
    }

    public static void storeVariable(Expression expr, JasminMethod method){
        switch(expr.return_type){
            case "int":
                if(expr.used_symbol.Jvarindex < 4){
                    System.out.println("istore_"+expr.used_symbol.Jvarindex+"\t\t;"+expr.used_symbol.name);
                }else{
                    System.out.println("istore "+expr.used_symbol.Jvarindex+"\t\t;"+expr.used_symbol.name);
                }
                break;
            default:
                System.out.println("astore "+expr.used_symbol.Jvarindex+"\t\t;"+expr.used_symbol.name);
        }
    }

    public static void loadVariable(Expression expr, String type){
        if(expr.used_symbol.Jvarindex < 0){
            throw new RuntimeException("Negative index is unacceptable "+expr.used_symbol.Jvarindex);
        }
        switch(type){
            case "int":
                if(expr.used_symbol.Jvarindex < 4){
                    System.out.println("iload_"+expr.used_symbol.Jvarindex+"\t\t;"+expr.used_symbol.name);
                }else{
                    System.out.println("iload "+expr.used_symbol.Jvarindex+"\t\t;"+expr.used_symbol.name);
                }
                break;
            case "instance":
                System.out.println("aload "+expr.used_symbol.Jvarindex+"\t\t;"+expr.used_symbol.name);
        }
    }
    /**
     * Parses an expression and places the result in the last stack position
     * @param str
     * @param scope
     */
    public static void writeExpression(Expression expr, JasminMethod method){
        Expression helper_expr;
        switch(expr.expression_type){
            case Expression.t_constant:
                if(expr.return_type == "int"){
                    Jasminify.writePushConstant((Integer)expr.value);
                }
                break;
            case Expression.t_sub:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                System.out.println("isub");
                break;
            case Expression.t_add:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                System.out.println("iadd");
                break;
            case Expression.t_div:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                System.out.println("idiv");
                break;
            case Expression.t_mul:
                Jasminify.writeExpression((Expression)expr.nested_structures.get(0), method);
                Jasminify.writeExpression((Expression)expr.nested_structures.get(1), method);
                System.out.println("imul");
                break;
            case Expression.t_method_access:
                if(expr.is_new){
                    System.out.println("new "+expr.used_symbol.name);
                    System.out.println("dup");
                    //System.out.println("astore ");
                    System.out.println("invokespecial "+expr.used_symbol.name+"/<init>()V");

                }else{
                    System.out.println("WELL WELL WELL");
                }
                break;
            case Expression.t_access:
                switch(expr.nested_structures.size()){
                    case 0:
                        if(expr.used_symbol == null || expr.used_symbol.Jvarindex == -1){
                            throw new RuntimeException("Uninitialized index");
                        }
                        //System.out.println("\t;loading "+expr.used_symbol.name+" V");
                        Jasminify.loadVariable(expr, "int");
                        break;
                    case 1:
                        //Method access (through an instance variable or static class)
                        helper_expr = (Expression)expr.nested_structures.get(0);
                        
                        if(expr.used_symbol.type != Symbol.t_class){    //Instances need to be loaded
                            Jasminify.loadVariable(expr,"instance");
                        }

                        for(Structure str : helper_expr.nested_structures){
                            writeExpression((Expression)str, method);
                        }
                        if(expr.used_symbol.type != Symbol.t_class){
                            System.out.println("invokevirtual "+expr.used_symbol.name+"/"+((JasminMethod)helper_expr.used_symbol).jasmin_signature);
                        }else{      //Is static, must be from import
                            System.out.println("invokestatic "+expr.used_symbol.name+"/"+getJasminSignature(helper_expr.used_symbol));
                        }
                        break;
                    default:
                        throw new RuntimeException("Check this scenario "+expr.nested_structures.size());
                }
        }
    }
    public static void writeStructure(Structure str, JasminMethod method){
        Expression helper0;
        Expression helper1;
        switch(str.type){
            case Structure.t_attribution:
                if(str.nested_structures.size() == 2){  //Simple variable attribution
                    helper0 = (Expression)str.nested_structures.get(0);
                    helper1 = (Expression)str.nested_structures.get(1);
                    writeExpression(helper1, method);
                    if(helper0.expression_type == Expression.t_access){
                        if(helper0.used_symbol.Jvarindex == -1){
                            helper0.used_symbol.Jvarindex = method.locals_index++;
                        }
                        Jasminify.storeVariable(helper0, method);
                    }else{
                        System.out.println("\t\tCANT PARSE TYPE "+helper0.type+" YET");
                    }
                }
                break;
            case Structure.t_expression:
                helper0 = ((Expression)str);
                switch(helper0.expression_type){
                    case Expression.t_access:
                        Jasminify.writeExpression(helper0, method);

                        break;
                    case Expression.t_return:
                        writeExpression((Expression)helper0.nested_structures.get(0), method);
                        //Return
                        method.returned = true;
                        Jasminify.writeReturn(method, helper0.return_type);
                }
            default:
        }
    }

    public static void writeMethod(JasminMethod method_node){
        int arg_amm;
        int start;
        
        if(method_node.name.equals("main")){    //Generate normal/main method head
            System.out.println(".method public static main([Ljava/lang/String;)V");
            arg_amm = 1;
        }else{
            if(method_node.type == Symbol.t_method_instance){
                System.out.print(".method public ");
            }else{
                System.out.print(".method public static ");
            }
            arg_amm = ((ArrayList<String>)method_node.data).size();           //Last types is return type
            System.out.println(method_node.jasmin_signature);
        }

        method_node.locals_index = arg_amm;   //Set stack and locals limit
        System.out.println(".limit stack 99");//                                    NEED TO CALCULATE DEEPEST DEPTH
        System.out.println(".limit locals "+method_node.table.getSize());
        
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
        }

        for(int i = start, j = 0; i < method_node.variables.length; i++, j++){  //Free all variable indexes
            method_node.variables[j].Jvarindex = -1;
        }
        if(method_node.returned == false){
            Jasminify.writeReturn(method_node, "void");
        }
        System.out.println(".end method");
    }
    static void start(TreeNode root, TreeNode class_node){
        if(class_node == null){
            throw new RuntimeException("No class found");
        }

        Jasminify.stack_index = 0;

        System.out.println(".class public "+class_node.name);
        if(class_node.data == null){
            System.out.println(".super java/lang/Object");
        }else{
            System.out.println(".super "+class_node.data);
        }

        System.out.println(".method public<init>()V");
        System.out.println("aload_0");
        if(class_node.data == null){
            System.out.println("invokenonvirtual java/lang/Object/<init>()V");
        }else{
            System.out.println("invokenonvirtual "+class_node.data+"/<init>()V");
        }
        System.out.println("return");
        System.out.println(".end method");

        for(TreeNode method: class_node.children){
            Jasminify.setJasminSignature((JasminMethod)method);
        }

        for(TreeNode method: class_node.children){
            Jasminify.writeMethod((JasminMethod)method);
        }
    }
}