import java.util.ArrayList;

public class JasminMethod extends TreeNode{
    public static Symbol[] variables;
    public static ArrayList<String> types;
    public static int locals_index;
    public JasminMethod(TreeNode scope){
        super(scope);
    }
}