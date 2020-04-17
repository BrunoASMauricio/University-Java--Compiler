
public class Expression extends Structure{
    public static final int t_unset = -1;
    public static final int t_negate = 0;

    public static final int t_lessthan = 1;
    
    public static final int t_and = 2;

    public static final int t_add = 3;
    public static final int t_div = 4;
    public static final int t_mul = 5;
    public static final int t_sub = 6;

    public static final int t_constant = 7;

    public static final int t_access = 8;           //Variable access
    public static final int t_access_length = 9;    //.length
    public static final int t_method_access = 10;   //Method access
    public static final int t_array_access = 11;    //Array access

    public String return_type;      //The expression value type
    public Object value;            //The expression value, if available
    public int expression_type;
    public Symbol used_symbol;
    /*
    used_symbol by type:
        Access: Accessed variable symbol
        Method: Accessed method symbol
        Array Access: Accessed variable array symbol
    */
    public Expression(TreeNode scope){
        super(scope);
        return_type = null;
        value = null;
        used_symbol = null;
        type = Structure.t_expression;
    }

    @Override
    public void evalS(){
        System.out.println("Expression");
        System.out.println("\tType "+this.expression_type);
        System.out.println();
    }
}