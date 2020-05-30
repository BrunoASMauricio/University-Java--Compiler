import java.util.ArrayList;


public class SemanticToJasminOptimizations {

    /**
     * Generate code tree, and depending on the arguments, optimize
     * @param class_root The ScopeNode class root
     * @param optimizations_arg Optimizations argument
     */
    public static void Optimize(ScopeNode class_root, Boolean optimizations_arg){
        if(optimizations_arg){
            constantPropagation(class_root);
            constantFolding(class_root);
        }
    }
    /**
     * Apply constant folding to the ScopeNode
     * @param class_root The class ScopeNode
     */
    public static void constantFolding(ScopeNode class_root){
        for(ScopeNode method : class_root.children){
            for(Structure struct : method.structures){
                foldOnStructure(struct);
            }
        }
    }
    /**
     * Fold a structure/code line
     * @param struct
     */
    public static void foldOnStructure(Structure  struct){
        Expression lhs;
        Expression rhs;
        Expression expr;
        for(Structure inner_struct : struct.nested_structures){
            foldOnStructure(inner_struct);
        }
        
        if(struct.type == Structure.t_expression && struct.nested_structures.size() == 2){
            expr = (Expression)struct;
            lhs = (Expression)struct.nested_structures.get(0);
            rhs = (Expression)struct.nested_structures.get(1);
            if(lhs.expression_type == Expression.t_constant && rhs.expression_type == Expression.t_constant){
                switch(expr.expression_type){
                    case Expression.t_add:
                        expr.value = (Integer)lhs.value + (Integer)rhs.value;
                        break;
                    case Expression.t_mul:
                        expr.value = (Integer)lhs.value * (Integer)rhs.value;
                        break;
                    case Expression.t_div:
                        if(((Integer)rhs.value).intValue() == 0){       //Let it be the JVM warn the user for being dumb (this is a very literal /0)
                            return;
                        }
                        expr.value = (Integer)lhs.value / (Integer)rhs.value;
                        break;
                    case Expression.t_sub:
                        expr.value = (Integer)lhs.value - (Integer)rhs.value;
                        break;
                    case Expression.t_lessthan:
                        expr.value = ((Integer)lhs.value < (Integer)rhs.value);
                        break;
                    case Expression.t_and:
                        expr.value = (Boolean)lhs.value && (Boolean)rhs.value;
                        break;
                    default:
                        return;
                }
                expr.expression_type = Expression.t_constant;
                expr.nested_structures = new ArrayList<Structure>();
            }
        }
    }
    /**
     * Propagates constants on a class
     * @param class_root The class ScopeNode
     */
    public static void constantPropagation(ScopeNode class_root){
        for(ScopeNode method : class_root.children){
            propagateOnBody(new ArrayList<Symbol>(), method.structures);
        }
    }
    /**
     * Looks for the given symbol name inside a Symbol list
     * @param list The list to search in
     * @param name The name to find
     * @return The symbol if found, null otherwise
     */
    public static Symbol inSymbolList(ArrayList<Symbol> list, String name){
        for(Symbol present : list){
            if(present.name.equals(name)){
                return present;
            }
        }
        return null;
    }
    /**
     * Merges the changes in the global and local variables into a single list, prioritizing local changes
     * @param locals
     * @param globals
     * @return The combined list
     */
    public static ArrayList<Symbol> mergeChanges(ArrayList<Symbol> locals, ArrayList<Symbol> globals){
        ArrayList<Symbol> merged = new ArrayList<Symbol>();
        merged.addAll(locals);
        //If a variable wasn't changed locally, keep global information
        for(Symbol global : globals){
            if(inSymbolList(locals, global.name) == null){
                merged.add(global);
            }
        }
        return merged;
    }
    /**
     * Evaluates a chunk of code, and returns an updated Symbol list
     * @param globally_changed_vars The variable states so far
     * @param body The structures to analyse
     * @return The updated state of the variables
     */
    public static ArrayList<Symbol> propagateOnBody(ArrayList<Symbol> globally_changed_vars, ArrayList<Structure> body){
        ArrayList<Symbol> locally_changed_vars;
        Expression helper0;
        Expression helper1;
        Expression helper2;
        Symbol helper_symbol;

        locally_changed_vars = new ArrayList<Symbol>();

        for(Structure base_structure : body){
            switch(base_structure.type){
                case Structure.t_attribution:
                    helper0 = (Expression)base_structure.nested_structures.get(0);
                    helper1 = (Expression)base_structure.nested_structures.get(1);
                    //It's a normal attribution
                    switch(base_structure.nested_structures.size()){
                        case 2:
                            //if it's initialized with a constant, write the constant to the variable
                            if(helper0.expression_type == Expression.t_access && !helper0.used_symbol.Jvartype.equals("class")){
                                //Always save changes locally
                                helper_symbol = inSymbolList(locally_changed_vars, helper0.used_symbol.name);
                                if(helper_symbol == null){
                                    helper_symbol = new Symbol();
                                    helper_symbol.name = helper0.used_symbol.name;
                                    helper_symbol.data = helper0.used_symbol.data;
                                    locally_changed_vars.add(helper_symbol);                        
                                }
                                if(helper1.expression_type == Expression.t_constant){
                                    helper_symbol.initialized_with_constant = true;
                                    helper_symbol.constant_value = helper1.value;
                                }else{
                                    helper_symbol.initialized_with_constant = false;
                                }
                            }
                            break;
                        case 3:
                            helper2 = (Expression)base_structure.nested_structures.get(2);
                            propagateInsideExpression(helper2, mergeChanges(locally_changed_vars, globally_changed_vars));
                            break;
                    }
                    propagateInsideExpression(helper1, mergeChanges(locally_changed_vars, globally_changed_vars));
                    break;
                case Structure.t_if:
                    //propagateInsideIf returns common changes in both branches, and those should be merged with the local changes
                    locally_changed_vars = mergeChanges(propagateInsideIf(base_structure, mergeChanges(locally_changed_vars, globally_changed_vars)), locally_changed_vars);
                    break;
                case Structure.t_while:
                    //propagateInsideWhile returns all the possible conflicting changes inside the while
                    //Doesnt include the changes that happen inside the while but did not conflict with previous changes,
                    //so by getting the "unique" changes, what we get is actually  changes_so_far - problematic_changes_inside_while
                    locally_changed_vars = getUnique(propagateInsideWhile(base_structure, mergeChanges(locally_changed_vars, globally_changed_vars)), locally_changed_vars) ;
                    break;
                case Structure.t_expression:
                    propagateInsideExpression((Expression)base_structure, mergeChanges(locally_changed_vars, globally_changed_vars));
                    break;
            }


        }
        return locally_changed_vars;
    }
    /**
     * Search through expression to find and replace locally constant variables.
     * When in a while body, this can be called to also evaluate ifs and whiles inside that while
     * @param str Structure to evaluate
     * @param changed_symbols Current state of the symbols
     */
    public static void propagateInsideExpression(Structure str, ArrayList<Symbol> changed_symbols){
        Symbol used_s;
        Expression expr;
        Expression helper1;
        Expression helper2;
        //This condition is only true inside while bodies because we only want to propagate the constants
        if(str.type != Structure.t_expression){
            switch(str.type){
                case Structure.t_attribution:
                    helper1 = (Expression)str.nested_structures.get(1);
                    if(str.nested_structures.size() == 3){
                        helper2 = (Expression)str.nested_structures.get(2);
                        propagateInsideExpression(helper2, changed_symbols);
                    }
                    propagateInsideExpression(helper1, changed_symbols);
                    break;
                case Structure.t_if:
                    propagateInsideExpression(str.nested_structures.get(0), changed_symbols);
                    propagateInsideExpression(str.nested_structures.get(1), changed_symbols);
                    propagateInsideExpression(str.nested_structures.get(2), changed_symbols);
                    break;
                case Structure.t_while:
                    for(Structure instr : str.nested_structures){
                        propagateInsideExpression(instr, changed_symbols);
                    }
                    break;
            }
        }else{
            expr = (Expression)str;
            if(expr.expression_type == Expression.t_access && expr.used_symbol != null){
                used_s = inSymbolList(changed_symbols, expr.used_symbol.name);
                if(used_s != null && used_s.initialized_with_constant == true){
                    System.out.println("Propagated constant!");
                    expr.expression_type = Expression.t_constant;
                    expr.used_symbol = null;
                    expr.value = used_s.constant_value;
                }
            }else{
                for(Structure instr : expr.nested_structures){
                    propagateInsideExpression((Expression)instr, changed_symbols);
                }
            }
        }
    }
    /**
     * Ignoring whiles and ifs, returns a single block of Structures/Code lines
     * @param str The structure to evaluate
     * @return The ArrayList<Structure> with the contiguous "lines"
     */
    public static ArrayList<Structure> mergeAllStructures(Structure str){
        ArrayList<Structure> ret = new ArrayList<Structure>();
        switch(str.type){
            case Structure.t_if:
                ret.add(str.nested_structures.get(0));
                for(Structure instr : str.nested_structures.get(1).nested_structures){
                    ret.addAll(mergeAllStructures(instr));
                }
                for(Structure instr : str.nested_structures.get(2).nested_structures){
                    ret.addAll(mergeAllStructures(instr));
                }
                break;
            case Structure.t_while:
                for(int i = 0; i < str.nested_structures.size(); i++){
                    ret.addAll(mergeAllStructures(str.nested_structures.get(i)));
                }
                break;
            default:
                ret.add(str);
        }
        return ret;
    }
    /**
     * Whiles are special because if a variable is used and changed inside it, we cannot replace it anywhere inside
     * Not can we speculate for after the while is done
     * So first we need to find the variables that are in fact changed and only afterwards propagate constants
     * @param str
     * @param globally_changed_vars
     * @return
     */
    public static ArrayList<Symbol> propagateInsideWhile(Structure str, ArrayList<Symbol> globally_changed_vars){
        Expression helper0;
        Expression helper1;
        Symbol global_symbol;
        Symbol local_symbol;
        ArrayList<Symbol> locally_changed_vars = new ArrayList<Symbol>();
        ArrayList<Structure> all_structures;

        all_structures = mergeAllStructures(str);
        
        //First, we need to see which variables are altered to something else than what exists globally
        for(Structure instr : all_structures){
            if(instr.type == Structure.t_attribution && instr.nested_structures.size() == 2){
                helper0 = (Expression)instr.nested_structures.get(0);
                helper1 = (Expression)instr.nested_structures.get(1);
                
                if(helper0.expression_type == Expression.t_access && !helper0.used_symbol.Jvartype.equals("class")){
                    //We only care about variables that are already in global
                    global_symbol = inSymbolList(globally_changed_vars, helper0.used_symbol.name);
                    if(global_symbol != null){
                        local_symbol = new Symbol();
                        local_symbol.name = helper0.used_symbol.name;
                        local_symbol.data = helper0.used_symbol.data;
                        if(helper1.expression_type == Expression.t_constant){
                            local_symbol.initialized_with_constant = true;
                            local_symbol.constant_value = helper1.value;
                        }else{
                            local_symbol.initialized_with_constant = false;
                        }
                        //We only want to save problematic attributions
                        if(!commonChanges(global_symbol, local_symbol)){
                            if(inSymbolList(locally_changed_vars, local_symbol.name) == null){
                                locally_changed_vars.add(local_symbol);
                            }
                        }
                    }
                }
            }
        }
        //Now, we can replace the variables that are present in global as constants but not present in the local changes
        for(Structure instr : all_structures){
            //All the changed variables in local are in global, but not all the ones in global are
            //in local so we can use the "uniques" to retrieve the global changes that weren't made
            //useless by a local change
            propagateInsideExpression(instr, getUnique(locally_changed_vars, globally_changed_vars));
        }
        //print(getUnique(locally_changed_vars, globally_changed_vars));
        return locally_changed_vars;
    }

    /**
     * Returns symbols present (changed) in only one of the given lists
     * @param list1
     * @param list2
     * @return ArrayList<Symbol> with the Symbols that only appear in one of the two lists
     */
    public static ArrayList<Symbol> getUnique(ArrayList<Symbol> list1, ArrayList<Symbol> list2){
        ArrayList<Symbol> diffs = new ArrayList<Symbol>();
        for(Symbol el_in_1 : list1){
            if(inSymbolList(list2, el_in_1.name) == null){
                diffs.add(el_in_1);
            }
        }
        for(Symbol el_in_2 : list2){
            if(inSymbolList(list1, el_in_2.name) == null){
                diffs.add(el_in_2);
            }
        }
        return diffs;
    }
    
    /**
     * Returns true if the symbols have had the same changes
     * @param s1
     * @param s2
     * @return
     */
    public static Boolean commonChanges(Symbol s1, Symbol s2){
        if(s1.initialized_with_constant == true && s2.initialized_with_constant == true){
            switch((String)(s1.data)){
                case "int":
                    if(((Integer)s1.constant_value).intValue() == ((Integer)s2.constant_value).intValue()){
                        return true;
                    }
                    break;
                case "boolean":
                    if(((Boolean)s1.constant_value).booleanValue() == ((Boolean)s2.constant_value).booleanValue()){
                        return true;
                    }
                    break;
            }
        }
        return false;
    }
    
    /**
     * Returns symbols with the same name and same changes in both lists
     * @param list1
     * @param list2
     * @return
     */
    public static ArrayList<Symbol> getCommonChanged(ArrayList<Symbol> list1, ArrayList<Symbol> list2){
        ArrayList<Symbol> same = new ArrayList<Symbol>();
        Symbol helper;
        for(Symbol el_in_1 : list1){
            helper = inSymbolList(list2, el_in_1.name);
            if(helper != null){
                if(!commonChanges(helper, el_in_1)){
                    helper.initialized_with_constant = false;
                }
                same.add(helper);                    
            }
        }
        return same;
    }
    /**
     * Search through both arms of an if expression
     * If both arms change the same variable into the same constant, save that change
     * Since both branches are analyzed one after the other, local changes need to be stored locally
     * and when both branches end, merged. Ex:
     * In the if body the variable a, which has the constant value of 2, is altered. The else branch
     * can still use the constant value, but after both branches end, a can't be assumed constant anymore
     * @param str if Structure
     * @param globally_changed_vars Global variable changes so far
     * @return A list with the variables that are common in both branches
     */
    public static ArrayList<Symbol> propagateInsideIf(Structure str, ArrayList<Symbol> globally_changed_vars){
        if(str.type != Structure.t_if){
            throw new RuntimeException("Wrong type "+str.type);
        }
        //We can always try to propagate on the condition
        propagateInsideExpression((Expression)str.nested_structures.get(0), globally_changed_vars);
        ArrayList<Symbol> changes_on_branch_1 = propagateOnBody(globally_changed_vars, str.nested_structures.get(1).nested_structures);
        ArrayList<Symbol> changes_on_branch_2 = propagateOnBody(globally_changed_vars, str.nested_structures.get(2).nested_structures);
        ArrayList<Symbol> a = getCommonChanged(changes_on_branch_1, changes_on_branch_2);
        //print(a);
        //print(getCommonChanged(changes_on_branch_1, changes_on_branch_2));
        return a;
    }
    /**
     * Prints a list of symbols and their current state
     * @param els The symbols to print
     */
    public static void print(ArrayList<Symbol> els){
        for (Symbol el : els) {
            System.out.println(el.name+" "+el.initialized_with_constant);
        }
    }
}