/*
Basic structure like symbol information holder
*/
public class Symbol {
    public final static int t_unset = -1;     //Unset symbol type (to know if the symbol is empty)
    public final static int t_class = 0;      //Symbol class type
    public final static int t_method_instance = 1;     //Symbol method type
    public final static int t_method_static = 2;     //Symbol method type
    public final static int t_variable = 3;   //Symbol variable type
    public final static int t_file_root = 4;  //The symbol that refers to the file root (last symbol)
    public TreeNode scope;              //The symbols scope
    public String signature;            //Map key (will eventually replace name and type)
    public String name;                 //Symbol name
    public int type;                    //Symbol type
    public String info;                 //Should contain line/column, as well as aditional information (printed in exceptions)
    public Object data;                 //The specified types' data
    public Symbol(){
        this.signature = null;
        this.name = null;
        this.type = Symbol.t_unset;
        this.info = null;
        this.data = null;
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
        this.info = s.info;
        this.data = s.data;
    }
}