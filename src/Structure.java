import java.util.ArrayList;

public class Structure {
    public final static int t_unset = -1;
    public final static int t_if = 0;
    public final static int t_while = 1;
    public final static int t_attribution = 2;
    public final static int t_expression = 3;
    //The nested expressions and structures
    public ArrayList<Structure> nested_structures;
    public TreeNode scope;
    public int type;
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
        Int Array Access: Expression
    data by type:
        int[]:  An expression with the 
    */
    public void addChild(Structure child_structure){
        this.nested_structures.add(child_structure);
    }
    public void evalSt(int depth){
        String ident = new String();
        for(int i = 0; i < depth; i++){
            ident+=" ";
        }
        System.out.print(ident+"Structure Type: ");
        switch(this.type){
            case t_unset:
                System.out.print("WARNING Unset structure");
                break;
            case t_if:
                System.out.println("IF");
                this.nested_structures.get(0).evalSt(depth+1);
                System.out.println(ident+"IF BODY");
                for(Structure if_bd : this.nested_structures.get(1).nested_structures){
                    if_bd.evalSt(depth+1);
                }
                System.out.println(ident+"ELSE BODY");
                for(Structure if_bd : this.nested_structures.get(2).nested_structures){
                    if_bd.evalSt(depth+1);
                }
                return;
            case t_while:
                System.out.print("WHILE");
                break;
            case t_attribution:
                System.out.print("ATTRIBUTION");
                break;
            case t_expression:
                ((Expression)this).evalE();
                break;
            default:
                System.out.print("ERROR, UNDEFINED STRUCTURE TYPE "+this.type);
                System.exit(-1);
        }
        System.out.println();
        for(Structure t : this.nested_structures){
            t.evalSt(depth+1);
        }
    }
}