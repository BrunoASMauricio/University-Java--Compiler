
public class IllegalNameException extends BaseException{
    public IllegalNameException(String s, SimpleNode n){
        super("Illegal name "+s,n);
    }
}