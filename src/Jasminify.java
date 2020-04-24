import java.util.ArrayList;
import java.util.List;
/*
OPTIMIZATIONS
Constant push depends on the constant size, best instruction is selected


*/
public class Jasminify {
    public static int stack_index;

    public static void getType(String type){
        switch(type){
            case "String[]":
                System.out.print("[");
            case "String":
                System.out.print("Ljava/lang/String;");
                break;
            case "int[]":
                System.out.print("[");
            case "int":
                System.out.print("I");
                break;
            case "void":
                System.out.print("V");
                break;
            case "boolean":
                break;
            default:
                throw new RuntimeException("Dunno how to jasminfy "+type);
        }
    }
    public static void writeStore(){

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
    /**
     * Parses an expression and places the result in the last stack position
     * @param str
     * @param scope
     */
    public static void writeExpression(Expression expr, JasminMethod method){
        String arith_operation;
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

        }
    }
    public static void writeStructure(Structure str, JasminMethod method){
        Expression helper;
        switch(str.type){
            case Structure.t_attribution:
                if(str.nested_structures.size() == 2){  //Simple variable attribution
                    //Place Expression value n the stack
                    writeExpression(((Expression)str.nested_structures.get(1)), method);

                    helper = (Expression)str.nested_structures.get(0);
                    if(helper.expression_type == Expression.t_access){
                        if(helper.used_symbol.Jvarindex == -1){
                            helper.used_symbol.Jvarindex = method.locals_index++;
                        }
                        System.out.println("istore "+helper.used_symbol.Jvarindex);
                    }else{
                        System.out.println("CANT PARSE TYPE "+str.type+" YET");
                    }
                }
                break;
            default:
        }
    }
    public static void writeMethod(JasminMethod method_node){
        int arg_amm;
        String return_type;
        int start;
        
        //Generate method head
        if(method_node.name.equals("main")){
            System.out.println(".method public static main([Ljava/lang/String;)V");
            arg_amm = 1;
            return_type = "void";
        }else{
            if(method_node.type == Symbol.t_method_instance){
                System.out.print(".method public "+method_node.name+"(");
            }else{
                System.out.print(".method public static "+method_node.name+"(");
            }

            method_node.types = (ArrayList<String>)method_node.data;
            arg_amm = method_node.types.size()-1;           //Last types is return type
            for(int i = 0; i < arg_amm; i++){
                Jasminify.getType(method_node.types.get(i));
            }
            System.out.print(")");
            return_type = method_node.types.get(arg_amm);
            Jasminify.getType(return_type);
            System.out.println();
        }
        //Set stack and locals limit
        method_node.locals_index = arg_amm;
        System.out.println(".limit stack 99");//                                    NEED TO CALCULATE DEEPEST DEPTH
        System.out.println(".limit locals "+method_node.locals_index);
        
        if(method_node.type == Symbol.t_method_instance){
            start = 1;      //Instance methods have at 0 the This and at 1 the first local variable
        }else{
            start = 0;      //Static methods have at 0 the first local variable
        }
        //System.out.println(method_node.table.symbols.size().toArray());
        method_node.variables = (Symbol[])(method_node.table.symbols.values().toArray(new Symbol[0]));
        //Setup argument variable indexes
        for(int i = start, j = 0; i < arg_amm; i++, j++){
            method_node.variables[j].Jvarindex = i;
        }

        //Parse inner structures
        for(Structure s: method_node.structures){
            Jasminify.writeStructure(s, method_node);
        }

        //Return
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

        //Free all variable indexes
        for(int i = start, j = 0; i < method_node.variables.length; i++, j++){
            method_node.variables[j].Jvarindex = -1;
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
            Jasminify.writeMethod((JasminMethod)method);
        }
    }
}