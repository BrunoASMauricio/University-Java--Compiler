import java.util.ArrayList;
/*
Algorithm for capturing the code tree

First, we capture the nodes:
    1. Ignore lines until .method is found or we run out of lines
    2. Capture all relevant (stores loads ifs gotos and labels) Nodes in sequential order, until .end method is reached, all while keeping separate label reference only list as well

    Second, connect the nodes:
    For every label, if the label is not marked as read:
        1. From the first Node, start attaching other Nodes sequentially
        2. When a goto is reached, attach the corresponding label, mark the current label as read and go to the next label
        3. If the end of the nodes is reached, mark the current label as read and go to the next label
*/

class CodeTree {
    public final static int read = 0;
    public final static int write = 1;
    public final static int jump_if = 2;
    public final static int jump_while = 3;
    public final static int jump_goto = 4;
    public final static int label = 5;

    public static ArrayList<CodeNode> all_roots;
    //Jumps to labels ahead in the code need to be saved as jump_requests since de actual node doesn't exist yet
    public CodeNode root;

    /**
     * Retrieve the relevant information from the jasmin code into the CodeNodes
     * @param jasmin_code The jasmin code to analyse
     */
    public static void generateTree(String jasmin_code){
        ArrayList<CodeNode> node_list;
        ArrayList<CodeNode> labels;
        CodeNode new_root;
        CodeNode helper;
        String line;
        String[] lines = jasmin_code.split("\n");
        
        new_root = null;
        labels = null;
        node_list = null;
        CodeTree.all_roots = new ArrayList<CodeNode>();
        for(String unescaped_line: lines){
            line = unescaped_line.split(" ;")[0];        //Purge comments
            if(line.length() == 0){
                continue;
            }else

            if(line.startsWith(".method")){
                node_list = new ArrayList<CodeNode>();
                labels = new ArrayList<CodeNode>();
                //Add an impossible label at the beggining to kickstart later code
                new_root = new CodeNode(";", CodeTree.label);
                new_root.line = 0;
                if(unescaped_line.split(" ;").length > 1){
                    new_root.jump_index = Integer.parseInt(unescaped_line.split(" ;")[1]);
                }
                labels.add(new_root);
                new_root.all_nodes = new ArrayList<CodeNode>();

                node_list.add(new_root);
                all_roots.add(new_root);
            }else
            if(line.startsWith(".limit locals ")){
                new_root.locals = Integer.parseInt(line.substring(14));
            }else
            //if load (YYloads don't exist and ialoads don't matter)
            if(line.substring(1).startsWith("load")){
                //Ignore loads of this (and getfields and putfields, cant analyze those)
                if(unescaped_line.split(";")[1].equals("this")){
                    continue;
                }
                node_list.add(new CodeNode(Integer.parseInt(line.substring(6)), Integer.parseInt(unescaped_line.split(";")[1]), CodeTree.read));
            }else
            //if iinc
            if(line.startsWith("iinc")){
                helper = new CodeNode(Integer.parseInt(line.split(" ")[1]), Integer.parseInt(unescaped_line.split(";")[1]),CodeTree.write);
                helper.iinc = Integer.parseInt(line.split(" ")[2]);
                node_list.add(helper);
            }else
            //if store (YYstores don't exist and iastores don't matter)
            if(line.substring(1).startsWith("store")){
                node_list.add(new CodeNode(Integer.parseInt(line.substring(7)), Integer.parseInt(unescaped_line.split(";")[1]),CodeTree.write));
            }else
            //if jump
            if(line.startsWith("if")){
                if(unescaped_line.split(";")[1].equals("if")){
                    node_list.add(new CodeNode(line.split(" ")[1], CodeTree.jump_if));
                }else{
                    node_list.add(new CodeNode(line.split(" ")[1], CodeTree.jump_while));
                }
            }else
            //if goto
            if(line.startsWith("goto")){
                node_list.add(new CodeNode(line.split(" ")[1], CodeTree.jump_goto));
            }else
            //if label (cut spaces from the end)
            if(line.split(" ")[0].endsWith(":")){
                helper = new CodeNode(line.split(" ")[0].substring(0, line.split(" ")[0].length()-1), CodeTree.label);
                helper.line = node_list.size();
                labels.add(helper);
                node_list.add(helper);
            }else

            if(line.startsWith(".end method")){
                if(node_list.size() != 1){
                    connectTree(new_root, node_list, labels);
                    new_root.all_nodes.addAll(node_list);
                }else{
                    //System.out.println("Removing empty root");
                    node_list.remove(0);
                    all_roots.remove(all_roots.size()-1);
                }
            }

        }
        //Trim
        
    }
    public static void trimTree(){
        String new_jasmin_out = new String();
        Boolean has_load = false;
        /*
        for(String line : Jasminify.out.split("\n")){
            if(line.substring(1).startsWith("store")){

                for(String line2 : Jasminify.out.split("\n")){
                    a
                }
                Integer.parseInt(line.substring(7))
                Integer.parseInt(unescaped_line.split(";")[1]);
            }
            new_jasmin_out += line;
        }
        */
    }
    
    //Search for the correct label node
    public static CodeNode getLabel(ArrayList<CodeNode> labels, String label){
        String a = "";
        for(CodeNode label_node : labels){
            a += ","+label_node.label;
            if(label_node.label.equals(label)){
                return label_node;
            }
        }
        throw new RuntimeException(a+" Label issue, could not find "+label);
    }

    //Connect tree
    public static void connectTree(CodeNode root, ArrayList<CodeNode> node_list, ArrayList<CodeNode> labels){
        CodeNode previous_node = null;
        CodeNode node;

        for(CodeNode label : labels){
            //Label was already "read"
            if(label.index == 1){
                continue;
            }
            //Point previous_node to label and set it as "read"
            previous_node = node_list.get(label.line);
            previous_node.index = 1;
            for(int i = label.line+1; i < node_list.size(); i++){
                node = node_list.get(i);
                //The first one to be added is the instruction afterwards
                previous_node.addNext(node);

                //If a label, set it as read
                if(node.type == CodeTree.label){
                    node.index = 1;
                }else

                //For ifs, also add label node as next
                if(node.type == CodeTree.jump_if || node.type == CodeTree.jump_while){
                    node.addNext(getLabel(labels, node.label));
                }else
                
                //A goto is a jump to another label, set label as next and abandon
                if(node.type == CodeTree.jump_goto){
                    node.addNext(getLabel(labels, node.label));
                    break;
                }

                previous_node = node;
            }
        }        
    }

    public static void unreadAll(){
        for(CodeNode root_tree : CodeTree.all_roots){
            for(CodeNode node : root_tree.all_nodes){
                node.read = false;
            }
        }
    }

    public static class CodeNode{
        /*
        Equal to the index of the current local variable,
        that is being written or read in the node
        or if a label, 1 if it has been read, -1 otherwise
        */
        public int type;
        public int index;
        public String label;
        //Label line
        public int line;
        //Variable hashcode
        public int hash;
        //Helper read boolean
        public Boolean read;
        //constant increase
        public int iinc;
        //Reachable nodes
        public ArrayList<CodeNode> next;
        //The jumps index, or agumment ammount for the root
        public int jump_index;
        //The root node needs to have a list of all it's nodes, as well as know the locals
        public ArrayList<CodeNode> all_nodes;
        public int locals;
        //Liveliness
        ArrayList<Integer> in;
        ArrayList<Integer> prev_in;
        ArrayList<Integer> out;
        ArrayList<Integer> prev_out;
        ArrayList<Integer> interference;
        
        public void __CodeNode_def__(){
            this.in = new ArrayList<Integer>();
            this.prev_in = new ArrayList<Integer>();
            this.out = new ArrayList<Integer>();
            this.prev_out = new ArrayList<Integer>();
            this.interference = new ArrayList<Integer>();

            this.read = false;
            this.next = new ArrayList<CodeNode>();
            this.all_nodes = null;
            this.iinc = -1;
        }
        //Add store or load node
        public CodeNode(int _index, int _hash,int _type){
            this.type = _type;
            this.index = _index;
            this.hash = _hash;
            this.__CodeNode_def__();
        }
    
        //Add if goto or label node
        public CodeNode(String _label, int _type){
            this.type = _type;
            this.label = _label;
            if(!_label.equals(";")){
                this.jump_index = Integer.parseInt(_label.substring(_label.indexOf('_')+1));
            }
            this.index = -1;
            this.__CodeNode_def__();
        }

        public void addNext(CodeNode n){
            next.add(n);
        }
    }
}