
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
    public static final int t_int_array = 12;    //Array creation

    public static final int t_return = 13;
    
    public String return_type;      //The expression value type
    public Object value;            //The expression value, if available (an Integer or Boolean)
    public int expression_type;
    public Symbol used_symbol;
    public Boolean is_new;
    /*
    used_symbol by type:
        Access: Accessed variable symbol
        Method: Accessed method symbol
    */
    public Expression(ScopeNode scope){
        super(scope);
        return_type = null;
        value = null;
        used_symbol = null;
        type = Structure.t_expression;
        expression_type = Expression.t_unset;
        is_new = false;
    }

    public void evalE(){
        System.out.print("Expression: ");
        if(this.is_new == true){
            System.out.print("NEW ");
        }
        switch(this.expression_type){
            case t_unset:
                System.out.print("WARNING Unset expression");
                break;
            case t_negate:
                System.out.print("NEGATE");
                break;
            case t_lessthan:
                System.out.print("LESSTHAN");
                break;
            case t_and:
                System.out.print("AND");
                break;
            case t_add:
                System.out.print("ADD");
                break;
            case t_div:
                System.out.print("DIV");
                break;
            case t_mul:
                System.out.print("MUL");
                break;
            case t_sub:
                System.out.print("SUB");
                break;
            case t_constant:
                System.out.print("CONSTANT");
                break;
            case t_access:
                System.out.print("ACCESS");
                break;
            case t_access_length:
                System.out.print("LENGTH");
                break;
            case t_method_access:
                System.out.print("METHOD ACCESS");
                break;
            case t_array_access:
                System.out.print("ARRAY ACCESS");
                break;
            case t_int_array:
                System.out.print("INT ARRAY");
                break;
            case t_return:
                System.out.print("RETURN");
                break;
            default:
                System.out.print("ERROR, UNDEFINED EXPRESSION TYPE "+this.expression_type);
                System.exit(-1);
        }
        if(this.used_symbol != null){
            System.out.print(" Symbol "+this.used_symbol.signature);
        }
        if(this.return_type == null){
            System.out.print(" RETURN TYPE CANT BE NULL ");
            System.exit(-1);
        }
        System.out.print(" return type "+this.return_type);

    }
}