import java.util.ArrayList;

public class JasminMethod extends TreeNode{
    public Symbol[] variables;
    public String jasmin_signature;
    public String jasmin_class;
    public int locals_index;
    public boolean returned;
    public JasminMethod(TreeNode scope){
        super(scope);
        returned = false;
    }
    public int getIndex(Symbol s){
        if(s.Jvarindex == -1){
            s.Jvarindex = locals_index++;
        }
        return s.Jvarindex;
    }
}