
public class DuplicateException extends BaseException{
    DuplicateException(String s, SimpleNode n){  
        super("Duplicate detected "+s, n);
    }
}