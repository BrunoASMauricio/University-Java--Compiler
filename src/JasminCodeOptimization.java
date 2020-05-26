import java.util.ArrayList;


public class JasminCodeOptimization {
    public static void Optimize(String jasmin_code, TreeNode semantic_class_root){
        CodeTree.generateTree(jasmin_code);
        getUninitializedVariables(semantic_class_root);
    }
    public static void constantPropagation(CodeTree tree){

    }
    /*
    
    */
    public static void getUninitializedVariables(TreeNode semantic_class_root){
        //For each method tree
        int hash;
        ArrayList<Integer> empty_start = new ArrayList<Integer>();
        for(CodeTree.CodeNode root : CodeTree.all_roots){
            try{
                searchNest(empty_start, root, -1, -1);
            }catch(Exception uninit){
                try{
                    hash = Integer.parseInt((""+uninit).split(" ")[1]+"");
                    for(TreeNode method : semantic_class_root.children){
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

    public static void getLiveliness(CodeTree tree){
        
    }
}
/*
bruteforce

public static void getUninitializedVariables(){
        //CodeTree.unreadAll();
        ArrayList<Integer> initialized_vars;
        
        DecisionNode root_node;
        DecisionNode current_decision_node;
        ArrayList<Integer> next_decisions;
        int decision_step;
        CodeTree.CodeNode current_tree_node;
        //For each method tree
        for(CodeTree.CodeNode root : CodeTree.all_roots){
            ////System.out.println("New method tree");
            root_node = new DecisionNode(null);
            next_decisions = null;
            current_decision_node = root_node;
            current_tree_node = root;
            ////System.out.println(current_tree_node);
            //while there is still a decision to be made (next decisions are made in a binary add 1 fashion)
            while(true){
                CodeTree.unreadAll();
                decision_step = 0;
                //While we still have a next node (haven't reached the end of the program)
                while(current_tree_node.next.size() != 0){
                    //If it's a jump node
                    if(current_tree_node.next.size() == 2){
                        //Following previous decisions
                        if(next_decisions != null && decision_step < next_decisions.size()){
                            ////System.out.println("Making a predetermined decision");
                            switch(current_tree_node.type){
                                case CodeTree.jump_if:
                                    //For ifs, decision 0 is not to enter (jump is at 0), 1 to enter
                                    if(next_decisions.get(decision_step) == 0){
                                        ////System.out.println("If: Decision 0, entering");
                                        current_tree_node = current_tree_node.next.get(0);
                                        current_decision_node = current_decision_node.choices[0];
                                    }else{
                                        ////System.out.println("If: Decision 1, not entering");
                                        current_tree_node = current_tree_node.next.get(1);
                                        current_decision_node = current_decision_node.choices[1];
                                    }
                                    decision_step++;
                                    break;
                                case CodeTree.jump_while:
                                    //For whiles, decision 0 is never to enter, decision 1 is to enter once (jump is at 0)
                                    if(next_decisions.get(decision_step) == 0){
                                        ////System.out.println("While: Decision 0, not entering");
                                        current_tree_node = current_tree_node.next.get(0);
                                        current_decision_node = current_decision_node.choices[0];
                                        decision_step++;
                                    }else{
                                        if(current_tree_node.read == false){
                                            ////System.out.println("While: Decision 1, entering");
                                            current_tree_node.read = true;
                                            current_tree_node = current_tree_node.next.get(1);
                                            current_decision_node = current_decision_node.choices[1];
                                            decision_step++;
                                        }else{
                                            ////System.out.println("While: Decision 1, not entering");
                                            current_tree_node = current_tree_node.next.get(0);
                                            current_tree_node.read = false;
                                        }
                                    }
                                    break;
                                default:
                                    throw new RuntimeException("FORK "+current_tree_node.type);
                            }
                        }else{
                            //Making new decisions (decisions 0 must not include jumps to avoid infinite loops here)
                            switch(current_tree_node.type){
                                case CodeTree.jump_if:
                                    ////System.out.println("New if decision 0, entering!");
                                    current_decision_node = current_decision_node.newChoice();
                                    current_tree_node = current_tree_node.next.get(0);
                                    break;
                                case CodeTree.jump_while:
                                    ////System.out.println("New while decision 0, not entering!");
                                    current_decision_node = current_decision_node.newChoice();
                                    current_tree_node = current_tree_node.next.get(0);
                                    break;
                            }
                        }
                    }else{
                        //load store or goto
                        //////System.out.println("non condition instruction "+current_tree_node.type);
                        current_tree_node = current_tree_node.next.get(0);
                    }
                }
                if(current_tree_node.next.size() == 0){
                    ////System.out.println("Reached the end of the program");
                }
                current_tree_node = root;
                current_decision_node.finalizeNode();
                current_decision_node = root_node;
                next_decisions = root_node.searchForNextDecision();
                if(next_decisions == null){
                    break;
                }
                for(Integer a : next_decisions){
                    //System.out.print(a+" ");
                }
                //System.out.print("_\n\n");
            }
            //root_node.printAll(0);
        }
    }
*/