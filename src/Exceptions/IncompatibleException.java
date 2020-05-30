
public class IncompatibleException extends BaseException{
    public IncompatibleException(String s, SimpleNode n){
        super("Incompatibility detected "+s,n);
    }
}