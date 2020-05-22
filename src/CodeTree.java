import java.util.ArrayList;
/*
Algorithm for capturing the tree

First: Ignore lines until .method is found or we run out of lines
Second: Capture all relevant (stores loads ifs gotos and labels) Nodes in sequential order, until .end method is reached. Keep separate label reference only list as well.
Third: From the first Node, start attaching other Nodes, until a goto is reached or we run out of Nodes. If a Node is a label mark it as "read"
Fourth: For each Label if it is not marked as read, repeat Third step starting from it.
Fifth: Go back to the First

*/

class CodeTree {
    public final static int read = 0;
    public final static int write = 1;
    public final static int jump_if = 2;
    public final static int jump_goto = 3;
    public final static int label = 4;

    public static ArrayList<CodeTree> all_trees;
    //Jumps to labels ahead in the code need to be saved as jump_requests since de actual node doesn't exist yet
    public CodeNode root;

    //Capture and mark nodes
    public static void generateTree(String jasmin_code){
        ArrayList<CodeNode> node_list;
        ArrayList<CodeNode> labels;
        CodeTree new_tree;
        CodeNode helper;
        String line;
        String[] lines = jasmin_code.split("\n");
        
        new_tree = null;
        labels = null;
        node_list = null;
        CodeTree.all_trees = new ArrayList<CodeTree>();

        for(String unescaped_line: lines){
            line = unescaped_line.split(";")[0];        //Purge comments
            if(line.length() == 0){
                continue;
            }else

            //if .method
            if(line.startsWith(".method")){
                new_tree = new CodeTree();
                node_list = new ArrayList<CodeNode>();
                labels = new ArrayList<CodeNode>();
                //Add an impossible label at the beggining to kickstart later code
                helper = new_tree.addNode(";", CodeTree.label);
                helper.line = 0;
                labels.add(helper);
                node_list.add(helper);
                all_trees.add(new_tree);
            }else

            //if load (YYloads don't exist and ialoads don't matter)
            if(line.substring(1).startsWith("load")){
                node_list.add(new_tree.addNode(line.substring(6), CodeTree.read));
            }else

            //if store (YYstores don't exist and iastores don't matter)
            if(line.substring(1).startsWith("store")){
                node_list.add(new_tree.addNode(line.substring(7), CodeTree.write));
            }else

            //if jump
            if(line.startsWith("if")){
                node_list.add(new_tree.addNode(line.split(" ")[1], CodeTree.jump_if));
            }else

            //if goto
            if(line.startsWith("goto")){
                node_list.add(new_tree.addNode(line.split(" ")[1], CodeTree.jump_goto));
            }else
            
            //if label (cut spaces from the end)
            if(line.split(" ")[0].endsWith(":")){
                helper = new_tree.addNode(line.split(" ")[0], CodeTree.label);
                helper.line = node_list.size();
                labels.add(helper);
                node_list.add(helper);
            }else

            if(line.startsWith(".end method")){
                if(node_list.size() != 1){
                    connectTree(new_tree, node_list, labels);
                }
            }

        }
    }

    //Search for the correct label node
    public static CodeNode getLabel(ArrayList<CodeNode> labels, String label){
        for(CodeNode label_node : labels){
            if(label_node.label.equals(label)){
                return label_node;
            }
        }
        return null;
    }
    //Connect tree
    public static void connectTree(CodeTree tree, ArrayList<CodeNode> node_list, ArrayList<CodeNode> labels){
        CodeNode previous_node = null;
        CodeNode node;

        tree.root = node_list.get(1);   //In the for bellow we need the ";" label but here we can cut it out and ignore it

        for(CodeNode label : labels){
            //Label was already "read"
            if(label.index == 1){
                continue;
            }
            System.out.println("Label "+label.label);
            //Point previous_node to label and set it as "read"
            previous_node = node_list.get(label.line);
            previous_node.index = 1;
            for(int i = label.line+1; i < node_list.size(); i++){
                node = node_list.get(i);
                previous_node.addNext(node);
                System.out.println("Instruction "+node.type);

                //If a label, set it as read
                if(node.type == CodeTree.label){
                    node.index = 1;
                }else

                //For ifs, also add label node as next
                if(node.type == CodeTree.jump_if){
                    node.addNext(getLabel(labels, node.label));
                    System.out.println("If jumps to label "+node.label);
                }else
                
                //A goto is a jump to another label, set label as next and abandon
                if(node.type == CodeTree.jump_goto){
                    node.addNext(getLabel(labels, node.label));
                    System.out.println("Go to jumps to label "+node.label);

                    break;
                }

                previous_node = node;
            }
        }        
    }

    public CodeTree(){
        root = new CodeNode();
    }

    //Add store or load node
    public CodeNode addNode(int index, int type){
        CodeNode new_node = new CodeNode();
        new_node.type = type;
        new_node.index = index;
        return new_node;
    }

    //Add if goto or label node
    public CodeNode addNode(String label, int type){
        CodeNode new_node = new CodeNode();
        new_node.type = type;
        new_node.label = label;
        return new_node;
    }


    public class CodeNode{
        /*
        Equal to the index of the current local variable,
        that is being written or read in the node
        or if a label, 1 if it has been read, -1 otherwise
        */
        public int type;
        public int index;
        public int line;
        public String label;
        public ArrayList<CodeNode> next;

        public CodeNode(){
            index = -1;
            next = new ArrayList<CodeNode>();
        }

        public void addNext(CodeNode n){
            next.add(n);
        }
    }

    //A jump to a label not yet parsed requires a """request""" to link them
    public class JumpRequest {
        public String label;
        public CodeNode client;
        public JumpRequest(CodeNode _client, String _label){
            this.label = _label;
            this.client = _client;
        }
    }
}