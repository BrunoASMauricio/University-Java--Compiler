import java.util.ArrayList;


public class JasminCodeOptimization {
    public static void Optimize(String jasmin_code, ScopeNode semantic_class_root, int register_ammount, int optimizations_arg){
        CodeTree.generateTree(jasmin_code);
        getUninitializedVariables(semantic_class_root);
        if(optimizations_arg > 1){
            getLiveliness(register_ammount);
        }
        Analyzer.throwAllExceptions();
    }
    
    public static void getLiveliness(int register_ammount){
        int rep = 0;
        int max_colors;
        int max_paint_registers;
        Boolean[] paint;
        for(CodeTree.CodeNode root_tree : CodeTree.all_roots){
            System.out.println("New method");
            //Remove root node (only used in another section, here it's in the way)
            root_tree.all_nodes.remove(0);
            //Locals need to be shoved in as writes
            for(int i = 0; i < root_tree.jump_index; i++){
                root_tree.all_nodes.add(i, new CodeTree.CodeNode(i+1, -1, CodeTree.write));
            }
            for(int i = 0; i < root_tree.jump_index; i++){
                root_tree.all_nodes.get(i).next.add(root_tree.all_nodes.get(i+1));
            }

            //for(CodeTree.CodeNode node : root_tree.all_nodes){
            //    switch(node.type){
            //        case CodeTree.write:
            //            System.out.print("write to index "+node.index);
            //            break;
            //        case CodeTree.read:
            //            System.out.print("read to index "+node.index);
            //            break;
            //        
            //    }
            //    System.out.print(" "+node+" connected to:");
            //    for(CodeTree.CodeNode next : node.next){
            //        System.out.print(" "+next);
            //    }
            //    System.out.println();
            //}
            
            GraphNode.all_nodes = new ArrayList<GraphNode>();
        
            //Liveliness analysis
            do{
                //rep = rep+1;
                rep = 1;
                //System.out.println(": "+rep);
                for(CodeTree.CodeNode node : root_tree.all_nodes){
                    if(node.type != CodeTree.read && node.type != CodeTree.write){
                        continue;
                    }
                    node.prev_in.clear();
                    node.prev_out.clear();
                    node.prev_in.addAll(node.in);
                    node.prev_out.addAll(node.out);
    
                    //System.out.println("-> "+node.index);
                    GraphNode.getNode(node.index);

                    defineOut(node.out, node);
                    switch(node.type){
                        case CodeTree.read:
                            defineIn(node.in, node.out, new Integer(node.index), null);
                            break;
                        case CodeTree.write:
                            defineIn(node.in, node.out, null, new Integer(node.index));
                            break;
                        case CodeTree.jump_goto:
                        case CodeTree.jump_while:
                        case CodeTree.jump_if:
                            defineIn(node.in, node.out, null, null);
                            break;
                    }

                    //System.out.println(rep);
                    //rep = rep+1;
                    //if(node.in.size() != 0) System.out.print("in: ");
                    //for(Integer a : node.in){
                    //    System.out.print(" "+a);
                    //}
                    //System.out.println();
                    //if(node.out.size() != 0) System.out.print("out: ");
                    //for(Integer b : node.out){
                    //    System.out.print(" "+b);
                    //}
                    //System.out.println();
                }
                //System.out.println("--------------------------------------");
            }while(!hasStabilized(root_tree));

            //Create interferences
            ArrayList<Integer> self_int;
            for(CodeTree.CodeNode node : root_tree.all_nodes){
                //Add all interferences in both in and out
                //GraphNode.addInterferences(node.in);
                GraphNode.addInterferences(node.out);
                //Also need, for writes, add interference for outs
                self_int = new ArrayList<Integer>();
                self_int.addAll(node.out);
                self_int.add(node.index);
                GraphNode.addInterferences(self_int);
            }

            //Get a maximum ammount of needed colors
            max_colors = 0;
            for(GraphNode node : GraphNode.all_nodes){
                if(node.interference.size() > max_colors){
                    max_colors = node.interference.size();
                }
            }
            max_colors += 1;//1 interference means 2 nodes

            //Color the graph
            paint = new Boolean[max_colors];
            max_paint_registers = 0;
            for(GraphNode node : GraphNode.all_nodes){
                System.out.print("Index: "+node.index+" interferes with:");
                for(GraphNode int_node : node.interference){
                    System.out.print(" "+int_node.index);
                }
                System.out.println();
                for(int i = 0; i < max_colors; i++){
                    paint[i] = true;
                }
                for(GraphNode int_node : node.interference){
                    if(int_node.painted_index != -1){
                        paint[int_node.painted_index-1] = false;
                    }
                }
                for(int i = 0; i < max_colors; i++){
                    if(paint[i]){
                        node.painted_index = i+1;
                        if(max_paint_registers < node.painted_index){
                            max_paint_registers = node.painted_index;
                        }
                        //System.out.println("Chosen paint index "+node.painted_index);
                        break;
                    }
                }
            }
            
            //Test for the requested maximum registers
            if(max_paint_registers > register_ammount){
                throw new RuntimeException("Cannot use only "+register_ammount+" minimum of "+max_paint_registers);
            }
            System.out.println("Reduced locals from "+root_tree.locals+" to "+max_paint_registers);
            //Update variable indexes
            for(CodeTree.CodeNode node : root_tree.all_nodes){
                GraphNode n = GraphNode.getNode(node.index);
                if(node.index == n.painted_index || node.hash == -1){
                    continue;
                }
                if(n.painted_index == -1){  //No interference
                    n.painted_index = 1;
                }
                if(node.index < 4){
                    Jasminify.out = Jasminify.out.replaceAll("store_"+node.index+" ;"+node.hash, "store_"+n.painted_index+" ;"+node.hash+"\n; changed "+node.index+" "+n.painted_index);
                    Jasminify.out = Jasminify.out.replaceAll("load_"+node.index+" ;"+node.hash, "load_"+n.painted_index+" ;"+node.hash+"\n; changed "+node.index+" "+n.painted_index);
                }else{
                    Jasminify.out = Jasminify.out.replaceAll("store "+node.index+" ;"+node.hash, "store "+n.painted_index+" ;"+node.hash+"\n; changed "+node.index+" "+n.painted_index);
                    Jasminify.out = Jasminify.out.replaceAll("load "+node.index+" ;"+node.hash, "load "+n.painted_index+" ;"+node.hash+"\n; changed "+node.index+" "+n.painted_index);
                }
                if(node.iinc != -1){
                    Jasminify.out = Jasminify.out.replaceAll("iinc "+node.index+" "+node.iinc+" ;"+node.hash, "iinc "+n.painted_index+" "+node.iinc+" ;"+node.hash+"\n; changed "+node.index+" "+n.painted_index);
                }
                //istore_1 ;747464370
            }
        }
    }
    public static class GraphNode{
        public static ArrayList<GraphNode> all_nodes;
        public ArrayList<GraphNode> interference;
        public int index;
        public int painted_index;
        public int hash;
        public GraphNode(int _index){
            this.interference = new ArrayList<GraphNode>();
            this.index = _index;
            this.painted_index = -1;
        }
        //Retrieve node from all_nodes, add a new one if no node is found
        public static GraphNode getNode(int target){
            GraphNode helper;
            for(GraphNode node : GraphNode.all_nodes){
                if(node.index == target){
                    return node;
                }
            }
            helper = new GraphNode(target);
            GraphNode.all_nodes.add(helper);
            return helper;
        }
        //Add all interferences in between the given nodes
        public static void addInterferences(ArrayList<Integer> nodes){
            GraphNode n1;
            GraphNode n2;
            for(Integer node1 : nodes){
                n1 = getNode(node1.intValue());
                for(Integer node2 : nodes){
                    n2 = getNode(node2.intValue());//Force all variables to be placed in the graph
                    if(node1.intValue() == node2.intValue()){
                        continue;
                    }
                    addInterference(n1, n2);
                }
            }
        }
        //Add a single interference to both nodes
        public static void addInterference(GraphNode node_1, GraphNode node_2){
            for(GraphNode node1_int : node_1.interference){
                if(node1_int.index == node_2.index){
                    return;
                }
            }
            node_1.interference.add(node_2);
            node_2.interference.add(node_1);
        }
    }
    //So as not to create duplicates (duplicates are problematic in this algorithm)
    public static void addInt(ArrayList<Integer> list, int new_int){
        for(Integer list_el : list){
            if(list_el.intValue() == new_int){
                return;
            }
        }
        list.add(new Integer(new_int));
    }
    //Since we are dealing with loads and stores, only 1 use OR 1 def is needed per in
    public static void defineIn(ArrayList<Integer> in, ArrayList<Integer> out, Integer use, Integer def){
        //helper[n] = out[n] – def [n]
        ArrayList<Integer> helper = new ArrayList<Integer>();
        helper.addAll(out);
        if(def != null){
            for(Integer out_int : helper){
                if(out_int.intValue() == def.intValue()){
                    helper.remove(out_int);
                    break;
                }
            }
        }
        //helper[n] = out[n] U use[n]
        if(use != null){
            addInt(helper, use);
        }
        //in[n] = helper[n] = use[n] U (out[n] – def [n])
        in.clear();
        in.addAll(helper);
    }
    //out[n] = Usucc in[s]
    public static void defineOut(ArrayList<Integer> out, CodeTree.CodeNode succs){
        ArrayList<CodeTree.CodeNode> succs_next = getNext(succs);
        out.clear();
        for(CodeTree.CodeNode succ : succs_next){
            for(Integer in_int : succ.in){
                addInt(out, in_int.intValue());
            }
        }
    }

    public static ArrayList<CodeTree.CodeNode> getNext(CodeTree.CodeNode succ){
        ArrayList<CodeTree.CodeNode> next = new ArrayList<CodeTree.CodeNode>();
        for(CodeTree.CodeNode next_succ : succ.next){
            switch(next_succ.type){
                case CodeTree.read:
                case CodeTree.write:
                    next.add(next_succ);
                break;
                default:
                    next.addAll(getNext(next_succ));    
            }
        }

        return next;
    }
    //Compares two Array Lists of Integers
    public static Boolean compareLists(ArrayList<Integer> list1, ArrayList<Integer> list2){
        if(list1.size() != list2.size()){
            return false;
        }
        Boolean found;
        for(Integer int1 : list1){
            found = false;
            for(Integer int2 : list1){
                if(int1.intValue() == int2.intValue()){
                    found = true;
                    break;
                }
            }
            if(found == false){
                return false;
            }
        }
        return true;
    }
    
    //Compares ins and prev_ins, outs and prev_outs, in all nodes
    public static Boolean hasStabilized(CodeTree.CodeNode root_tree){
        CodeTree.CodeNode current_node;
        for(CodeTree.CodeNode node : root_tree.all_nodes){
            if(!compareLists(node.in, node.prev_in) || !compareLists(node.out, node.prev_out)){
                return false;
            }
        }
        return true;
    }













    public static void getUninitializedVariables(ScopeNode semantic_class_root){
        //For each method tree
        int hash;
        ArrayList<Integer> empty_start = new ArrayList<Integer>();
        for(CodeTree.CodeNode root : CodeTree.all_roots){
            try{
                searchNest(empty_start, root, -1, -1);
            }catch(Exception uninit){
                try{
                    hash = Integer.parseInt((""+uninit).split(" ")[1]+"");
                    for(ScopeNode method : semantic_class_root.children){
                        for(Symbol variable : method.table.symbols.values()){
                            if(variable.hashCode() == hash){
                                Analyzer.throwException(new RuntimeException("Uninitialized variable '"+variable.name+"' inside '"+method.name+"()'")); 
                                hash = -1;                               
                            }
                            if(hash == -1){
                                break;
                            }
                        }
                        if(hash == -1){
                            break;
                        }
                    }
                }catch(Exception oops){
                    throw oops;
                }
            }
        }

    }
    public static boolean searchForLife(ArrayList<Integer> the_living, int life){
        for(Integer alive : the_living){
            if(alive.intValue() == life){
                return true;
            }
        }
        return false;
    }
    public static ArrayList<Integer> searchNest(ArrayList<Integer> in_alive, CodeTree.CodeNode node, int nest_jump_index, int _arg_amm){
        ArrayList<Integer> localFauna = new ArrayList<Integer>();
        ArrayList<Integer> nestedFauna1;
        ArrayList<Integer> nestedFauna2;
        ArrayList<Integer> totalFauna;
        int arg_amm = 0;
        if(_arg_amm != -1){
            arg_amm = _arg_amm;
        }
        CodeTree.CodeNode current_node = node;
        //System.out.println("diggin "+arg_amm);
        while(true){
            switch(current_node.type){

                case CodeTree.label:
                    //else body ends in the label
                    if(current_node.label.equals(";")){
                        //System.out.println("YAY "+current_node.jump_index);
                        arg_amm = current_node.jump_index;
                    }
                    if(nest_jump_index != -1 && current_node.label.equals("endif_"+nest_jump_index)){
                        return localFauna;
                    }
                    break;
                case CodeTree.read:
                    if(arg_amm < current_node.index && !searchForLife(in_alive, current_node.index) && !searchForLife(localFauna, current_node.index)){
                        //System.out.println("variable "+current_node.index+" not found :( "+current_node.hash);
                        throw new RuntimeException(""+current_node.hash);
                    }else{
                        if(searchForLife(in_alive, current_node.index)){
                            //System.out.println("variable "+current_node.index+" found in global fauna");
                        }
                        if(searchForLife(localFauna, current_node.index)){
                            //System.out.println("variable "+current_node.index+" found in local fauna");
                        }
                    }
                break;

                case CodeTree.write:
                    if(!searchForLife(localFauna, current_node.index)){
                        localFauna.add(current_node.index);
                        //System.out.println("Adding index: "+current_node.index);
                    }
                break;

                case CodeTree.jump_if:
                    totalFauna = new ArrayList<Integer>();
                    totalFauna.addAll(in_alive);
                    totalFauna.addAll(localFauna);
                    nestedFauna1 = searchNest(totalFauna, current_node.next.get(0), current_node.next.get(0).jump_index, arg_amm);
                    nestedFauna2 = searchNest(totalFauna, current_node.next.get(1), -1, arg_amm);
                    //Compare faunas
                    for(Integer alive_in_1 : nestedFauna1){
                        if(searchForLife(nestedFauna2, alive_in_1.intValue())){
                            if(!searchForLife(localFauna, alive_in_1.intValue())){
                                localFauna.add(alive_in_1);
                            }
                        }
                    }

                    //Skip to the end of the else
                    while(true){
                        current_node = current_node.next.get(0);
                        if(current_node.next.size() == 0){
                            break;
                        }
                        if(current_node.label != null && current_node.label.equals("endif_"+current_node.next.get(0).jump_index)){
                            break;
                        }
                    }
                break;
                case CodeTree.jump_goto:
                    //if and while bodies end here
                    return localFauna;
            }

            if(current_node.next.size() == 0){
                break;
            }
            current_node = current_node.next.get(0);
        }
        //System.out.println("done diggin");
        return localFauna;
    }
    /*
    Every jump decision has 2 possible states.
    There are if decisions and while decisions.
    The two possible states for each are as follows:
        Ifs: The state can be either False (the condition in the if was false), which represents a jump forward or True, (the condition in the if was true) which represents no jump was done
        Whiles: The states can be False (the condition in the while was false), which represents a jump forward or True, (the condition in the while was True ONCE), which means we perform the condition once

    Checks if all paths have been searched.
    Paths that ended are marked True
    */
    public static void allPathsSearched(){
        
    }

    public static void recursiveSearch(ArrayList<Integer> initialized_vars, CodeTree.CodeNode node){
        node.read = true;

        for(CodeTree.CodeNode next : node.next){
            recursiveSearch(initialized_vars, next);
        }
    }
}
