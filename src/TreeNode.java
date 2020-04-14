import java.util.ArrayList;
import java.util.List;

/**
 * Each node can be seen as a single scope
 * Handles it's symbol table, and searches in the symbol tables on the scopes above
 */
public class TreeNode {
    private TreeNode root;              //Always keep a reference to the root, just in case
    private TreeNode parent;            //The "scope" above
    private String type;                //TEMPORARY For debug purposes, either method or class
    private List<TreeNode> children;    //Children nodes
    public SymbolTable table;           //This nodes' symbol table
    /**
     * Basic constructor
     * @param in_type       //Scope type
     * @param in_parent     //Parent scope
     */
    public TreeNode(String in_type, TreeNode in_parent){
        if(parent == null){
            this.root = this;
            this.parent = null;
        }else{
            this.root = in_parent.root;
            this.parent = in_parent;
        }
        this.type = in_type;
        this.children = new ArrayList<TreeNode>();
        this.table = new SymbolTable();
    }
    /**
     * Add a child to this scope
     * @param type child scope type
     * @return the new child
     */
    public TreeNode addChild(String type){
        TreeNode new_child = new TreeNode(type, this);
        children.add(new_child);
        return new_child;
    }
    /**
     * Add a symbol to the scope
     * @param new_symbol Complete Symbol object to add
     */
    public void addSymbol(Symbol new_symbol){
        //Build the signature from the name and type. Keep them for debug purposes
        switch(new_symbol.type){
            case Symbol.t_method:
                new_symbol.signature = new_symbol.name+"(";
                ArrayList<String> types = (ArrayList<String>)new_symbol.data;
                for(int i = 0; i < types.size()-1; i++){
                    if(i == 0){
                        new_symbol.signature += types.get(i);
                    }else{
                        new_symbol.signature += ","+types.get(i);
                    }
                }
                //There must always be at least 1 type
                //The analyzer adding return void ensures this
                new_symbol.signature += ")"+types.get(types.size()-1);
                System.out.println("Method signature: "+new_symbol.signature);
            break;
            case Symbol.t_class:
                
            break;
            case Symbol.t_variable:
                
            break;

        }
        //Check local symbol table
        Symbol dup = this.table.getSymbol(new_symbol.signature);
        if(dup != null){
            throw new RuntimeException("Duplicate declaration: \""+new_symbol.info+"\"\nFirst declaration: \""+dup.info+"\"");
        }
        //Check parent scope for warning
        dup = this.getSymbol(new_symbol.name);
        if(dup != null){
            System.out.println("WARNING, variable already available in scope: \""+dup.info+"\"");
        }

        this.table.insertSymbol(new_symbol);
    }
    /**
     * Retrieve a symbol accessible by this scope
     * @param name Symbol name to retrieve
     * @return the symbol or null
     */
    public Symbol getSymbol(String name){
        Symbol ret = this.table.getSymbol(name);
        if(ret != null){
            return ret;
        }
        if(this.parent != null){
            return this.parent.getSymbol(name);
        }
        return null;
    }


    public String getType(){
        return this.type;
    }
    
    public int getNmbChildren(){
        return this.children.size();
    }
    
    public TreeNode getChild(int i){
        return this.children.get(i);
    }
}