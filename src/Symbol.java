/*
Basic structure like symbol information holder
*/
public class Symbol {
    public static int t_class = 0;      //Symbol method type
    public static int t_method = 1;     //Symbol method type
    public static int t_variable = 1;   //Symbol method type
    public String name;                 //Symbol name (and key for the map)
    public String type;                 //Symbol type
    public String info;                 //Should contain line/column, as well as aditional information (printed in exceptions)
    public Object data;                 //The specified types' data
}