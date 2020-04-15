/*
Basic structure like symbol information holder
*/
public class Symbol {
    public final static int t_unset = -1;     //Unset symbol type (to know if the symbol is empty)
    public final static int t_class = 0;      //Symbol class type
    public final static int t_method = 1;     //Symbol method type
    public final static int t_variable = 2;   //Symbol variable type
    public final static int t_file_root = 3;  //The symbol that refers to the file root (last symbol)
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
        class ArrayList<Boolean>: [0] extended [1] static
        variable: data type
    */
    public void evalS(){
        System.out.println("Name "+this.name);
        System.out.println("Type "+this.type);
        System.out.println("Signature "+this.signature);
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