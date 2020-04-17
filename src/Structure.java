import java.util.ArrayList;

public class Structure {
    public final static int t_unset = -1;
    public final static int t_if = 0;
    public final static int t_while = 1;
    public final static int t_attribution = 1;
    public final static int t_expression = 2;
    //The nested expressions and structures
    public ArrayList<Structure> nested_structures;
    public TreeNode scope;
    public int type;
    public Object data;
    public Structure(TreeNode current_scope){
        this.type = Structure.t_unset;
        this.nested_structures = new ArrayList<Structure>();
        this.scope = current_scope;
    }
    /*
    nested_structures by type:
        if: [0] the condition expression [1] ArrayList<Structure>: if body statements [2] ArrayList<Structure>: else body statements
        while: The first one is the condition expression, the rest are the repeated
        Operations: The two operator structures
        Negation: Only 1 child, structure whose veracity to switch

        Method Access: Arguments
        Array Access: Expression
    */
    public void addChild(Structure child_structure){
        this.nested_structures.add(child_structure);
    }
    public void evalS(){
        System.out.println("Structure");
        System.out.println("\tType "+this.type);
        System.out.println();
    }
}