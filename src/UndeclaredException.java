
public class UndeclaredException extends BaseException{
    UndeclaredException(String s, SimpleNode n){  
        super("Undeclared entity "+s,n);
    }
}