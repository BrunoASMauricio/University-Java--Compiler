/*
Basic structure like symbol information holder
*/
public class Symbol {
    public final static int t_unset = -1;     //Unset symbol type (to know if the symbol is empty)
    public final static int t_class = 0;      //Symbol class type
    public final static int t_method_instance = 1;     //Symbol method type
    public final static int t_method_static = 2;     //Symbol method type
    public final static int t_variable_ninit = 3;   //Symbol variable type
    public final static int t_variable_init = 4;   //Symbol variable type
    public final static int t_file_root = 5;  //The symbol that refers to the file root (last symbol)
    public TreeNode scope;              //The symbols scope
    public String signature;            //Map key (will eventually replace name and type)
    public String name;                 //Symbol name
    public int type;                    //Symbol type
    public Object data;                 //The specified types' data
    //Code generation vars
    public String Jfielddsignature;                //Data required by Jasmin
    public int Jvarindex;               //Jasmin symbol index in stack
    public String Jvartype;               //field or local variable
    //Optimization variables
    public boolean initialized_with_constant;
    public Object constant_value;
    public int while_accesses;
    public Symbol(){
        this.signature = null;
        this.name = null;
        this.type = Symbol.t_unset;
        this.data = null;
        this.initialized_with_constant = false;
        this.Jfielddsignature = null;
        this.Jvarindex = -1;
        this.while_accesses = 0;
    }
    /*
    data meaning by type:
        class: Extends String
        variable: String: data type
        method: ArrayList<String>: argument types and the return type in the last argument
    */
    public void evalS(){
        System.out.println("Symbol ");
        System.out.println("\tName "+this.name);
        System.out.println("\tType "+this.type);
        System.out.println("\tSignature "+this.signature);
        System.out.println();
    }
    /**
     * Stores the information from the given Symbol,
     * in the current one.
     * Does not copy the objects, just stores the reference
     * @param s Symbol to get the information from
     */
    public void getFromSymbol(Symbol s){
        this.signature = s.signature;
        this.name = s.name;
        this.type = s.type;
        this.data = s.data;
    }
}