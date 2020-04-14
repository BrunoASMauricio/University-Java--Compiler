/*
Basic structure like symbol information holder
*/
public class Symbol {
    public final static int t_class = 0;      //Symbol class type
    public final static int t_method = 1;     //Symbol method type
    public final static int t_variable = 2;   //Symbol variable type
    public String signature;            //Map key (will eventually replace name and type)
    public String name;                 //Symbol name
    public int type;                    //Symbol type
    public String info;                 //Should contain line/column, as well as aditional information (printed in exceptions)
    public Object data;                 //The specified types' data
    /*
    For imports:
        data : ArrayList of types, the last one being the return type
    */
}