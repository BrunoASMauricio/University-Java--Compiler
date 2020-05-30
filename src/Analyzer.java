import java.util.ArrayList;

public class Analyzer {
    public static ScopeNode debug_node;
    public static final int max_exceptions = 4;
    public static int current_exceptions;
    public static Exception[] thrown_exceptions;
    public static void throwException(RuntimeException ex){
        if(Analyzer.current_exceptions < Analyzer.max_exceptions){
            Analyzer.thrown_exceptions[Analyzer.current_exceptions++] = ex;
        }else{
            throw new RuntimeException("Too many exceptions");
        }
    }
    /**
     * Checks if the given type is a basic type
     */
    public static Boolean checkBasicType(String type){
        switch(type){
            case "int":
                return true;
            case "int[]":
                return true;
            case "String":
                return true;
            case "String[]":
                return true;
            case "boolean":
                return true;
            default:
                return false;
        }
    }
    /**
     * Looks for a type. If no basic type was found, looks for classes
     * @param type String type to look for
     * @param current_scope Target scope
     * @param n Current AST node
     */
    public static void checkType(String type, ScopeNode current_scope, SimpleNode n){
        Symbol helper;
        if(!checkBasicType(type)){
            helper = current_scope.getSymbol(type);
            if(helper == null || helper.type != Symbol.t_class){
                Analyzer.throwException(new UndeclaredException("Undefined data type "+type, n));
                return;
            }
        }
    }
    /**
     * Searches the scope for a symbol with the given signature
     * @param signature Target signature
     * @param current_scope Scope to search in (including visible scopes)
     * @param n Current AST node
     * @return The found symbol
     */
    public static Symbol getByIdentifier(String signature, ScopeNode current_scope, SimpleNode n){
        Symbol helper = current_scope.getSymbol(signature);
        if(helper == null){
            Analyzer.throwException(new UndeclaredException("Undefined "+signature, n));
            return null;
        }
        return helper;
    }
    /**
     * Handles the Arithmetic expression that starts at node expr_node and sets an Expression object accordingly
     * @param expr_node The start of the operation
     * @param expr The target Expression object
     */
    public static void parseArithOperation(SimpleNode expr_node, Expression expr){
        if(expr_node.jjtGetNumChildren() != 2){
            Analyzer.throwException(new RuntimeException("Operation should only have 2 children, current one has "+expr_node.jjtGetNumChildren()+", "+expr_node.id));
            return;
        }
        Expression lhs = getExpression((SimpleNode)expr_node.jjtGetChild(0) , expr.scope);
        Expression rhs = getExpression((SimpleNode)expr_node.jjtGetChild(1) , expr.scope);
        expr.nested_structures.add(lhs);
        expr.nested_structures.add(rhs);
        
        if(!lhs.return_type.equals(rhs.return_type)){
            Analyzer.throwException(new IncompatibleException("Incompatible types: "+lhs.return_type+" and "+lhs.return_type, expr_node));
            return;
        }else{//Only accept int return types
            if(!(lhs.return_type.equals("int"))){
                Analyzer.throwException(new IncompatibleException("Cannot perform operation on type: "+lhs.return_type, expr_node));
                return;
            }
        }
        expr.return_type = "int";
    }
    /**
     * Handles the Boolean Operation expressions (and) that starts at node expr_node and sets an Expression object accordingly
     * @param expr_node The start of the operation
     * @param expr The target Expression object
     */
    public static void parseBooleanOperation(SimpleNode expr_node, Expression expr){
        if(expr_node.jjtGetNumChildren() != 2){
            Analyzer.throwException(new RuntimeException("Operation should only have 2 children, current one has "+expr_node.jjtGetNumChildren()+", "+expr_node.id));
            return;
        }
        Expression lhs = getExpression((SimpleNode)expr_node.jjtGetChild(0) , expr.scope);
        Expression rhs = getExpression((SimpleNode)expr_node.jjtGetChild(1) , expr.scope);
        expr.nested_structures.add(lhs);
        expr.nested_structures.add(rhs);
        
        if(!lhs.return_type.equals(rhs.return_type)){
            Analyzer.throwException(new IncompatibleException("Incompatible types: "+lhs.return_type+" and "+rhs.return_type, expr_node));
            return;
        }else{
            // 1 && true is valid????
            if(!checkBasicType(lhs.return_type)){
                Analyzer.throwException(new IncompatibleException("Cannot perform boolean operation on type: "+lhs.return_type, expr_node));
                return;
            }
        }
        expr.return_type = "boolean";
    }
    /**
     * Handles the Logic Operation expressions (less than) that starts at node expr_node and sets an Expression object accordingly
     * @param expr_node The start of the operation
     * @param expr The target Expression object
     */
    public static void parseLogicOperation(SimpleNode expr_node, Expression expr){
        if(expr_node.jjtGetNumChildren() != 2){
            Analyzer.throwException(new RuntimeException("Operation should only have 2 children, current one has "+expr_node.jjtGetNumChildren()+", "+expr_node.id));
            return;
        }
        Expression lhs = getExpression((SimpleNode)expr_node.jjtGetChild(0) , expr.scope);
        Expression rhs = getExpression((SimpleNode)expr_node.jjtGetChild(1) , expr.scope);
        expr.nested_structures.add(lhs);
        expr.nested_structures.add(rhs);
        
        if(!lhs.return_type.equals(rhs.return_type)){
            Analyzer.throwException(new IncompatibleException("Incompatible types: "+lhs.return_type+" and "+rhs.return_type, expr_node));
            return;
        }else{
            if(!lhs.return_type.equals("int")){
                Analyzer.throwException(new IncompatibleException("Cannot perform logic operation on type: "+lhs.return_type, expr_node));
                return;
            }
        }
        expr.return_type = "boolean";
    }
    /*
    Checks if an invalid array operation (access or length is occuring)
    */
    public static void parseArrayOperation(String return_type, SimpleNode node){
        if(return_type != null && !return_type.equals("int[]")){
            if(node.id == JMMParserTreeConstants.JJTARRAYACCESS){
                Analyzer.throwException(new RuntimeException("Cant perform array access on "+return_type));
            }
            if(node.jjtGetNumChildren() > 0 && ((SimpleNode)node.jjtGetChild(0)).id == JMMParserTreeConstants.JJTLENGTH){
                Analyzer.throwException(new RuntimeException("Cant perform array length access on "+return_type));
            }
        }
    }
    /**
     * Handles Identifier() ( SelectorArguments() )? type nodes, and returns the signature
     * @param method_node AST Node where the method starts (the node that contains Identifier() ( SelectorArguments() )? as the  2 children)
     * @param scope The current scope
     * @return The method signature
     */
    public static String getMethodSignature(SimpleNode method_node, ScopeNode scope, Expression method){
        String signature = ((SimpleNode)method_node.jjtGetChild(0)).image+"(";
        Expression help_expr;

        for(int i = 0; i < method_node.jjtGetChild(1).jjtGetNumChildren(); i++){
            //Each argument is based on an expression that has a return type, and is scope
            //bound to the "line" scope and not the previous call scopes
            help_expr = getExpression((SimpleNode)method_node.jjtGetChild(1).jjtGetChild(i), scope);
            if(method != null){
                method.addChild(help_expr);
            }
            if(i == 0){
                signature += help_expr.return_type;
            }else{
                signature += ","+help_expr.return_type;
            }
        }
        signature += ")";

        return signature;
    }
    /**
     * Handles Array access (a single expression that must return an int type) and sets an Expression Object accordingly
     * @param this_expr The Expression Object to build into
     * @param arr_expr_node The AST expression that is inside the ArrayAccess
     * @param scope The current scope
     */
    public static void getArrayAccess(Expression this_expr, SimpleNode arr_expr_node, ScopeNode scope){
        Expression helper_expr;

        this_expr.expression_type = Expression.t_array_access;
        helper_expr = getExpression(arr_expr_node, scope);
        this_expr.addChild(helper_expr);
        //this_expr.data = helper_expr;
        this_expr.return_type = helper_expr.return_type;
        if(this_expr.return_type != "int"){
            Analyzer.throwException(new IncompatibleException("Array accesses must be of type int and not "+this_expr.return_type, arr_expr_node));
            return;
        }
    }
    /**
     * Follows the scopes in a method call / variable or array access
     * f.ex. A.B.C   the overall scope is the same when evaluating all
     * of them but B has A as a parent and C has B
     * @param follow_node The Node to follow
     * @param parent The parent expression (local scope, relative to the previous selector)
     * @param static_access Wether the current access was done statically or not
     * @param scope The "line" scope
     * @return The generated Expression
     */
    public static Expression followScope(SimpleNode follow_node, ScopeNode parent_scope, Boolean static_access, ScopeNode scope){
        SimpleNode helper;
        Expression this_expr;
        
        helper = (SimpleNode)follow_node.jjtGetChild(0);
        this_expr = new Expression(parent_scope);
        switch(follow_node.id){
            case JMMParserTreeConstants.JJTARRAYACCESS:
                Analyzer.getArrayAccess(this_expr, helper, scope);
                break;
            case JMMParserTreeConstants.JJTSELECTOR:
                if(helper.id == JMMParserTreeConstants.JJTLENGTH){
                    this_expr.expression_type = Expression.t_access_length;
                    this_expr.return_type = "int";
                }else{
                    if(parent_scope == null){
                        Analyzer.throwException(new RuntimeException("Invalid scope"));
                        return null;
                    }
                    if(follow_node.jjtGetNumChildren() == 2){
                        this_expr.expression_type = Expression.t_method_access;
                        String signature = getMethodSignature(follow_node, scope, this_expr);
                        this_expr.used_symbol = getByIdentifier(signature, parent_scope, follow_node);
                        
                        if(this_expr.used_symbol.type == Symbol.t_method_static && static_access == false){
                            Analyzer.throwException(new RuntimeException("Tried to access a static method from a non static scope "+this_expr.used_symbol.name));
                            return null;
                        }else if(this_expr.used_symbol.type == Symbol.t_method_instance && static_access == true){
                            Analyzer.throwException(new RuntimeException("Tried to access a non static method from a static scope "+this_expr.used_symbol.name));
                            return null;
                        }
                        
                        ArrayList<String> a = (ArrayList<String>)this_expr.used_symbol.data;
                        this_expr.return_type = a.get(a.size()-1);                        //Get method return type
                    }else{
                        this_expr.expression_type = Expression.t_access;
                        this_expr.used_symbol = getByIdentifier(((SimpleNode)follow_node.jjtGetChild(0)).image, parent_scope, follow_node);
                        this_expr.return_type = (String)this_expr.used_symbol.data;
                    }
                }
                break;
            default:
                Analyzer.throwException(new RuntimeException("Unexpected token type "+follow_node.id+" inside a selection"));
                return null;
        }
        return this_expr;
    }
    /**
     * Retrieves a general Expression
     * @param expr_node Expressions start node
     * @param current_scope Current scope
     * @return The return type of the expression
     */
    public static Expression getExpression(SimpleNode expr_node, ScopeNode current_scope){
        int node_children;
        int i;
        Expression expr;
        Symbol helper_symbol;
        Expression helper_expression;
        ArrayList<String> helper_al;
        ScopeNode helper_scope;
        Boolean static_access;
        String str_helper;
        SimpleNode helper_node;

        node_children = expr_node.jjtGetNumChildren();
        i = 0;
        expr = new Expression(current_scope);
        expr.type = Structure.t_expression;
        //System.out.println(">>>>"+JMMParserTreeConstants.jjtNodeName[expr_node.id]);
        switch(expr_node.id){
            //Operations
            case JMMParserTreeConstants.JJTAND:
                expr.expression_type = Expression.t_and;
                parseBooleanOperation(expr_node, expr);
                expr.return_type = "boolean";
                break;
            case JMMParserTreeConstants.JJTLESSTHAN:
                expr.expression_type = Expression.t_lessthan;
                parseLogicOperation(expr_node, expr);
                expr.return_type = "boolean";
                break;
            case JMMParserTreeConstants.JJTADD:
                expr.expression_type = Expression.t_add;
                parseArithOperation(expr_node, expr);
                break;
            case JMMParserTreeConstants.JJTSUB:
                expr.expression_type = Expression.t_sub;
                parseArithOperation(expr_node, expr);
                break;
            case JMMParserTreeConstants.JJTMUL:
                expr.expression_type = Expression.t_mul;
                parseArithOperation(expr_node, expr);
                break;
            case JMMParserTreeConstants.JJTDIV:
                expr.expression_type = Expression.t_div;
                parseArithOperation(expr_node, expr);
                break;
            //Nodes
            case JMMParserTreeConstants.JJTINTCONST:
                expr.value = (Object)(new Integer(expr_node.int_val));
                expr.expression_type = Expression.t_constant;
                expr.return_type = "int";
            break;

            case JMMParserTreeConstants.JJTBOOLCONST:
                expr.value = (Object)(new Boolean(expr_node.bool_val));
                expr.expression_type = Expression.t_constant;
                expr.return_type = "boolean";
            break;

            case JMMParserTreeConstants.JJTIDENTIFIER:
                helper_symbol = Analyzer.getByIdentifier(expr_node.image, current_scope, expr_node);
                expr.expression_type = Expression.t_access;
                expr.used_symbol = helper_symbol;
                switch(helper_symbol.type){
                    case Symbol.t_variable_ninit:
                        System.out.println("WARNING: Variable "+helper_symbol.name+" may not have been initialized");
                        //Analyzer.throwException(new UninitializedException("Variable  not initialized ", expr_node));
                    case Symbol.t_variable_init:
                        expr.return_type = (String)helper_symbol.data;
                        break;
                    case Symbol.t_class:
                        expr.return_type = helper_symbol.name;
                        break;
                    default:
                        Analyzer.throwException(new RuntimeException("Wrong Identifier type "+helper_symbol.type));
                        return null;
                }
                break;
            case JMMParserTreeConstants.JJTNEGATE:
                expr.expression_type = Expression.t_negate;
                if(expr_node.jjtGetNumChildren() != 1){
                    Analyzer.throwException(new RuntimeException("Wrong ammount of children, negate should only have 1 child, not "+expr_node.jjtGetNumChildren()));
                    return null;
                }
                helper_expression = getExpression((SimpleNode)expr_node.jjtGetChild(0), current_scope);
                if(helper_expression.return_type != "boolean"){
                    Analyzer.throwException(new IncompatibleException("Cannot convert from "+helper_expression.return_type+" to boolean", expr_node));
                    return null;
                }
                expr.addChild(helper_expression);
                expr.return_type = "boolean";
                break;

            case JMMParserTreeConstants.JJTDIRECTEXPRESSION:
                if(expr_node.jjtGetNumChildren() != 1){
                    Analyzer.throwException(new RuntimeException("Parser issue! Wrong ammount of children for direct expression "+expr_node.jjtGetNumChildren()));
                    return null;
                }
                return getExpression((SimpleNode)expr_node.jjtGetChild(0), current_scope);
            
            case JMMParserTreeConstants.JJTNEW:
                //Can only be int[] or Identifier[] where Identifier must be an existing class
                if(((SimpleNode)expr_node.jjtGetChild(0)).id != JMMParserTreeConstants.JJTIDENTIFIER){
                    expr.expression_type = Expression.t_int_array;
                    expr.return_type = "int[]";
                    expr.nested_structures.add(Analyzer.getExpression((SimpleNode)expr_node.jjtGetChild(0), current_scope));
                    break;
                }
                expr.is_new = true;

                if(node_children <= 1){
                    throw new RuntimeException("Not supposed to hacve these "+node_children);
                }
            //The next two cases start from a scope and follow it (down, unless they come across another identifier access)
            case JMMParserTreeConstants.JJTIDENTIFIERACCESS:
                //Get and use "remote"/higher scope/symbol
                if(node_children > 1){
                    //Started with a method (normally, being static or non static depends on the current method, but since methods must be non static, assume non static)
                    //The new clause extends downwards for non array new
                    if(((SimpleNode)expr_node.jjtGetChild(1)).id == JMMParserTreeConstants.JJTSELECTORARGUMENTS){
                        expr.expression_type = Expression.t_method_access;
                        
                        String signature = getMethodSignature(expr_node, current_scope, expr);
                        
                        expr.used_symbol = getByIdentifier(signature, current_scope, expr_node);
                        helper_al = ((ArrayList<String>)(expr.used_symbol.data));
                        
                        //helper_expression = new Expression(current_scope);
                        //helper_expression.return_type = helper_al.get(helper_al.size()-1);
                        
                        //expr.addChild(helper_expression);

                        static_access = false;
                        //See if the return type is a class, or not
                        str_helper = helper_al.get(helper_al.size()-1);
                        if(checkBasicType(str_helper)){
                            helper_scope = null;
                        }else{
                            helper_scope = (ScopeNode)current_scope.getSymbol(str_helper);
                            if(helper_scope.type != Symbol.t_class){
                                Analyzer.throwException(new RuntimeException("Undefined beahaviour "+helper_scope.type));
                                return null;
                            }
                        }

                        expr.return_type = helper_al.get(helper_al.size()-1);
                        i = 2;
                        str_helper = expr.return_type;
                    }else{
                        i = 1;
                        expr.used_symbol = getByIdentifier(((SimpleNode)expr_node.jjtGetChild(0)).image, current_scope, expr_node);
                        //Type of access
                        if(expr.used_symbol.type == Symbol.t_class){
                            static_access = true;
                            helper_scope = (ScopeNode)(expr.used_symbol);
                        }else{
                            if(expr.used_symbol.type == Symbol.t_variable_ninit){
                                System.out.println("WARNING: Variable "+expr.used_symbol.name+" may not have been initialized");
                                //Analyzer.throwException(new UninitializedException("Variable "+expr.used_symbol.name+" not initialized ",expr_node));
                            }
                            static_access = false;
                            //If the return type isn't a class type, scope is inexistent
                            if(checkBasicType((String)expr.used_symbol.data)){
                                helper_scope = null;
                            }else{
                                helper_scope = (ScopeNode)getByIdentifier((String)expr.used_symbol.data, current_scope, expr_node);
                                //expr.used_symbol = helper_scope;
                            }
                        }

                        expr.expression_type = Expression.t_access;
                        if(node_children < 2){
                            Analyzer.throwException(new RuntimeException("Wrong ammount of nodes"));
                            return null;
                        }
                        str_helper = (String)expr.used_symbol.data;
                    }
                    /*
                    Expression expr;
                    Symbol helper_symbol;
                    Expression helper_expression;
                    ScopeNode helper_scope;
                    SimpleNode helper_node;
                    */
                    //If there are more nodes to be parsed, it must be SELECTOR nodes
                    if(i < node_children){
                        while(i < node_children){
                            helper_node = (SimpleNode)expr_node.jjtGetChild(i++);
                            Analyzer.parseArrayOperation(str_helper, helper_node);
                            helper_expression = followScope(helper_node, helper_scope, static_access, current_scope);
                            str_helper = helper_expression.return_type;
                            expr.addChild(helper_expression);
                            static_access = false;
                            if(checkBasicType(helper_expression.return_type) || helper_expression.return_type.equals("void")){
                                helper_scope = null;
                            }else{
                                helper_scope = (ScopeNode)current_scope.getSymbol(helper_expression.return_type);
                                if(helper_scope.type != Symbol.t_class){
                                    Analyzer.throwException(new RuntimeException("Undefined beahaviour "+helper_expression.return_type));
                                    return null;
                                }
                            }
                        }
                        expr.return_type = ((Expression)expr.nested_structures.get(expr.nested_structures.size()-1)).return_type;
                    }
                }else{
                    //Variable access
                    expr.used_symbol = getByIdentifier(((SimpleNode)expr_node.jjtGetChild(0)).image, current_scope, expr_node);
                    if(expr.used_symbol.type == Symbol.t_variable_ninit){
                        System.out.println("WARNING: Variable "+expr.used_symbol.name+" may not have been initialized");
                        //Analyzer.throwException(new UninitializedException("Variable "+expr.used_symbol.name+" not initialized ",expr_node));
                    }
                    expr.expression_type = Expression.t_access;
                    if(expr.used_symbol.type == Symbol.t_class){
                        Analyzer.throwException(new RuntimeException("Cannot use class name in this context"));
                        return null;
                    }else if(expr.used_symbol.type == Symbol.t_variable_ninit || expr.used_symbol.type == Symbol.t_variable_init){
                        expr.return_type = (String)(expr.used_symbol.data);
                        expr.used_symbol.type = Symbol.t_variable_init;
                    }else{
                        Analyzer.throwException(new RuntimeException("unexpected symbol type "+expr.used_symbol.type));
                        return null;
                    }
                }
                break;
            case JMMParserTreeConstants.JJTTHIS:
                expr.expression_type = Expression.t_access;
                //Local scope only, find current class
                helper_scope = current_scope;
                while(helper_scope.type != Symbol.t_class){
                    helper_scope = helper_scope.parent;
                    if(helper_scope == null){
                        Analyzer.throwException(new RuntimeException("Scope parent is null, can't find class"));
                        return null;
                    }
                }
                str_helper = null;
                while(i < node_children){
                    helper_node = (SimpleNode)expr_node.jjtGetChild(i++);
                    Analyzer.parseArrayOperation(str_helper, helper_node);
                    helper_expression = followScope(helper_node, helper_scope, false,  current_scope);
                    //helper_scope = helper_expression.used_symbol.scope;
                    if(checkBasicType(helper_expression.return_type) || helper_expression.return_type.equals("void")){
                        helper_scope = null;
                    }else{
                        helper_scope = (ScopeNode)current_scope.getSymbol(helper_expression.return_type);
                        if(helper_scope.type != Symbol.t_class){
                            Analyzer.throwException(new RuntimeException("Undefined beahaviour "+helper_expression.return_type));
                            return null;
                        }
                    }
                    expr.addChild(helper_expression);
                    str_helper = helper_expression.return_type;
                }
                expr.return_type = ((Expression)expr.nested_structures.get(expr.nested_structures.size()-1)).return_type;
                break;
            case JMMParserTreeConstants.JJTARRAYACCESS:
                Analyzer.getArrayAccess(expr, (SimpleNode)expr_node.jjtGetChild(0), current_scope);
                break;
            default:
                Analyzer.throwException( new RuntimeException("UNRECOGNIZED "+expr_node.id));
                return null;
        }
        return expr;
    }
    /**
     * Handles a variable attribution ( Target() <EQ> Expression() <SC> )
     * @param attr_node The AST node
     * @param current_scope The current scope
     * @return A structure holding the attribution
     */
    public static Structure getAttribution(SimpleNode attr_node, ScopeNode current_scope){
        Structure this_attr;
        SimpleNode target;
        Expression helper1;
        Expression helper2;
        Expression helper3;
        Symbol target_symbol;

        target = (SimpleNode)attr_node.jjtGetChild(0);
        this_attr = new Structure(current_scope);
        this_attr.type = Structure.t_attribution;
        helper3 = null;

        //Check for variable existence and place it into an Expression Object
        target_symbol = getByIdentifier(((SimpleNode)target.jjtGetChild(0)).image, current_scope, attr_node);
        helper1 = new Expression(current_scope);
        helper1.type = Structure.t_expression;
        helper1.expression_type = Expression.t_access;
        helper1.used_symbol = target_symbol;
        switch(target_symbol.type){
            case Symbol.t_variable_ninit:
            case Symbol.t_variable_init:
                helper1.return_type = (String)target_symbol.data;
                break;
            case Symbol.t_class:
                helper1.return_type = target_symbol.name;
                break;
            default:
                Analyzer.throwException( new RuntimeException("Wrong Identifier type "+target_symbol.type));
                return null;
        }

        if(target.jjtGetNumChildren() > 1){
            //Array access (array must itself be initialized)
            if(target_symbol.type == Symbol.t_variable_ninit){
                System.out.println("WARNING: Variable "+target_symbol.name+" may not have been initialized");
                //Analyzer.throwException( new UninitializedException("Variable "+target_symbol.name+" not initialized ",attr_node));
            }
            helper3 = Analyzer.getExpression((SimpleNode)target.jjtGetChild(1), current_scope);
            if(!helper3.return_type.equals("int")){
                Analyzer.throwException( new IncompatibleException("Array access must be int, not "+helper3.return_type,attr_node));
                return null;
            }
            if(!helper1.return_type.equals("int[]")){
                Analyzer.throwException( new IncompatibleException("Arrays must be of type int[], and not "+helper1.return_type,attr_node));
                return null;
            }
            helper1.return_type = "int";    //Arrays con only be of type int, so the required return_type for the left needs to be int now
        }
        target_symbol.type = Symbol.t_variable_init;

        helper2 = Analyzer.getExpression((SimpleNode)attr_node.jjtGetChild(1), current_scope);

        if(!helper1.return_type.equals(helper2.return_type)){
            Analyzer.throwException( new IncompatibleException(helper1.return_type+" is incompatible with "+helper2.return_type, attr_node));
            return null;
        }
        this_attr.addChild(helper1);
        if(helper3 != null){
            this_attr.addChild(helper3);
        }
        this_attr.addChild(helper2);
        
        if(attr_node.jjtGetNumChildren() != 2) {
            Analyzer.throwException( new RuntimeException("Wrong number of children on attribution "+attr_node.jjtGetNumChildren()));
            return null;
        }
        return this_attr;
    }
    /**
     * Retrieves a while structure
     * @param while_structure_node The starting AST node
     * @param current_scope The current scope
     * @return The generated structure
     */
    public static Structure getWhile(SimpleNode while_structure_node, ScopeNode current_scope){
        SimpleNode help_node;
        int i;
        int node_children;
        Structure this_while;
        Expression helper;

        i = 0;
        help_node = (SimpleNode)while_structure_node.jjtGetChild(i++);
        node_children = while_structure_node.jjtGetNumChildren();
        this_while = new Structure(current_scope);
        this_while.type = Structure.t_while;

        helper = Analyzer.getExpression((SimpleNode)help_node.jjtGetChild(0), current_scope);           //While head condition
        if(helper.return_type != "boolean"){
            Analyzer.throwException( new IncompatibleException("Cannot convert from "+helper.return_type+" to boolean", while_structure_node));
            return null;
        }
        this_while.addChild(helper);

        while(i < node_children){                                                                       //While body statements
            help_node = (SimpleNode)while_structure_node.jjtGetChild(i++);
            this_while.addChild(Analyzer.getStatement(help_node, current_scope));
        }

        return this_while;
    }
    
    /**
     * Retrieves an if structure
     * @param while_structure_node The starting AST node
     * @param current_scope The current scope
     * @return The generated structure
     */
    public static Structure getIf(SimpleNode if_structure_node, ScopeNode current_scope){
        SimpleNode help_node;
        SimpleNode help_node1;
        int i;
        int node_children;
        Expression helper;
        Structure this_if;
        ArrayList<Structure> cond_if_else;

        i = 0;
        help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
        node_children = if_structure_node.jjtGetNumChildren();
        cond_if_else = new ArrayList<Structure>();


        this_if = new Structure(current_scope);
        this_if.type = Structure.t_if;

        helper = Analyzer.getExpression((SimpleNode)help_node.jjtGetChild(0), current_scope);   //If head condition
        if(helper.return_type != "boolean"){
            Analyzer.throwException(new IncompatibleException("Cannot convert from "+helper.return_type+" to boolean", if_structure_node));
            return null;
        }

        cond_if_else.add(helper);
        //cond_if_else.add(0, new Structure(current_scope));
        cond_if_else.add(new Structure(current_scope));
        cond_if_else.add(new Structure(current_scope));
        
        //this_if.addChild(helper);

        while(i < node_children && ((SimpleNode)if_structure_node.jjtGetChild(i)).id != JMMParserTreeConstants.JJTELSESTRUCTURE){   //If body statements
            help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
            //this_if.addChild(Analyzer.getStatement(help_node, current_scope));
            cond_if_else.get(1).nested_structures.add(Analyzer.getStatement(help_node, current_scope));
        }
        //Parse else
        if(((SimpleNode)if_structure_node.jjtGetChild(i)).id == JMMParserTreeConstants.JJTELSESTRUCTURE){
            help_node1 = ((SimpleNode)if_structure_node.jjtGetChild(i));
            node_children = help_node1.jjtGetNumChildren();
            i = 0;
            while(i < node_children){
                help_node = (SimpleNode)help_node1.jjtGetChild(i++);
                //this_if.addChild(Analyzer.getStatement(help_node, current_scope));
                cond_if_else.get(2).nested_structures.add(Analyzer.getStatement(help_node, current_scope));
            }
        }

        this_if.nested_structures = cond_if_else;

        return this_if;
    }
    /**
     * Retrieves a general statement
     * @param statement_node The starting AST statement node
     * @param current_scope The current scope
     * @return The generated structure object
     */
    public static Structure getStatement(SimpleNode statement_node, ScopeNode current_scope){
        if(statement_node.id == JMMParserTreeConstants.JJTIFSTRUCTURE){
            return Analyzer.getIf(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTWHILESTRUCTURE){
            return Analyzer.getWhile(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTATTRIBUTION){
            return Analyzer.getAttribution(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTDIRECTEXPRESSION){
            return Analyzer.getExpression(statement_node, current_scope);
        }else{
            Analyzer.throwException( new RuntimeException("Unrecognized token "+statement_node.id));
            return null;
        }
    }
    /**
     * Retrieves a variable declaration
     * @param decl_node The AST node
     * @param current_scope The current scope
     */
    public static void getVarDecl(SimpleNode decl_node, ScopeNode current_scope, String type){
        Symbol this_variable = new Symbol();
        Symbol helper_symbol;

        this_variable.name = ((SimpleNode)decl_node.jjtGetChild(1)).image;
        this_variable.data = ((SimpleNode)decl_node.jjtGetChild(0)).image;
        this_variable.type = Symbol.t_variable_ninit;
        this_variable.Jvartype = type;

        helper_symbol = current_scope.table.getSymbol(this_variable.name);
        if(helper_symbol != null){
            Analyzer.throwException( new DuplicateException("variable already present", decl_node));
            return;
        }
        //System.out.println("Variable declared: "+this_variable.data+" "+this_variable.name);
        checkType((String)this_variable.data, current_scope, decl_node);
        current_scope.addSymbol(this_variable, decl_node);
    }
    /**
     * Retrieves a method
     * @param method_node The NormalMethod/MainMethod AST node
     * @param ismain Whether it's a normalm method or the main method
     * @param parent Parent scope
     * @param only_head Java needs to retrieve all the method signatures before the bodies, when this variable is true, the head will be added to the symbols table, when false the body will be parsed
     */
    public static void getMethod(SimpleNode method_node, Boolean ismain, ScopeNode parent, Boolean only_head){
        SimpleNode help_node;
        int i;
        int node_children;
        ScopeNode this_method;
        Symbol helper_symbol;
        String return_type;
        ArrayList<String> types = new ArrayList<String>();
        ArrayList<Symbol> argument_variables = new ArrayList<Symbol>();

        this_method =  new JasminMethod(parent);            //Simple wrapper, Analyzer uses just as a ScopeNode
        node_children = method_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode)method_node.jjtGetChild(i++);

        //Get method details
        if(!ismain){          //Normal method head
            this_method.type = Symbol.t_method_instance;
            this_method.name = ((SimpleNode)help_node.jjtGetChild(1)).image;
            for(int j = 2; j < help_node.jjtGetNumChildren(); j+=2){
                types.add(((SimpleNode)help_node.jjtGetChild(j)).image);        //Add types for method signature
                helper_symbol = new Symbol();                                   //Create argument variable (the first variables are the argument variables)
                helper_symbol.type = Symbol.t_variable_init;
                helper_symbol.name = ((SimpleNode)help_node.jjtGetChild(j+1)).image;
                helper_symbol.data = ((SimpleNode)help_node.jjtGetChild(j)).image;

                checkType((String)helper_symbol.data, parent, method_node);
                argument_variables.add(helper_symbol);
            }
            return_type = ((SimpleNode)help_node.jjtGetChild(0)).image;
            types.add(((SimpleNode)help_node.jjtGetChild(0)).image);            //With how the Parser is done, the last type is always the return type
            checkType(((SimpleNode)help_node.jjtGetChild(0)).image, parent, method_node);
        }else{
            this_method.type = Symbol.t_method_static;
            this_method.name = "main";
            types.add("String[]");
            helper_symbol = new Symbol();
            helper_symbol.type = Symbol.t_variable_init;
            helper_symbol.name = ((SimpleNode)help_node).image;
            helper_symbol.data = "String[]";
            argument_variables.add(helper_symbol);
            return_type = "void";
            types.add("void");      //Still need to add void as the return type
        }
        this_method.data = types;
        for(int j = 0; j < argument_variables.size(); j++){
            helper_symbol = argument_variables.get(j);
            helper_symbol.Jvartype = "local";
            helper_symbol.Jvarindex = j+1;
            this_method.addSymbol(helper_symbol, method_node);
        }
        
        if(only_head == true){
            parent.addChild(this_method, method_node);
            return;
        }else{
            ScopeNode.buildSignature(this_method);
            this_method = (ScopeNode)parent.getSymbol(this_method.signature);
        }

        while(i < node_children){                                               //Search inside the method
            help_node = (SimpleNode) method_node.jjtGetChild(i++);

            if(help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
                Analyzer.getVarDecl(help_node, this_method, "local");
            }else if(help_node.id == JMMParserTreeConstants.JJTRETURN){         //Method return expression
                Expression h = Analyzer.getExpression((SimpleNode)help_node.jjtGetChild(0), this_method);
                if(!return_type.equals(h.return_type)){
                    Analyzer.throwException( new IncompatibleException("Incompatible return type, can't convert from "+h.return_type+" to "+return_type, method_node));
                    return;
                }
                Expression helper = new Expression(parent);
                helper.expression_type = Expression.t_return;
                helper.nested_structures.add(h);
                helper.return_type = h.return_type;
                helper.used_symbol = h.used_symbol;
                helper.value = h.value;
                this_method.structures.add(helper);
                return;
            }else{                                                              //Get statements
                this_method.structures.add(Analyzer.getStatement(help_node, this_method));
            }
        }
        if(!return_type.equals("void")){        //If this code runs, it means no return statement exists
            Analyzer.throwException( new IncompatibleException("Non void method, must return "+return_type, method_node));
        }
    }
    /**
     * Retrieve a full class
     * @param class_node The AST class node
     * @param root_scope The root scope
     */
    public static ScopeNode getClass(SimpleNode class_node, ScopeNode root_scope){
        SimpleNode help_node;
        int i;
        int method_start;
        int node_children;
        ScopeNode class_ScopeNode;
        Symbol this_class_constructor;        //Default constructor
        ScopeNode helper;
        String class_defs;

        node_children = class_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode) class_node.jjtGetChild(i++);
        class_defs = null;
        class_ScopeNode = new ScopeNode(root_scope);
        class_ScopeNode.name = ((SimpleNode)help_node.jjtGetChild(0)).image;
        class_ScopeNode.type = Symbol.t_class;
        this_class_constructor = new Symbol();

        if(help_node.jjtGetNumChildren() == 2){        //Class extends
            class_defs = ((SimpleNode)help_node.jjtGetChild(1)).image;
            helper = (ScopeNode)root_scope.getSymbol(((SimpleNode)help_node.jjtGetChild(1)).image);
            if(helper == null){
                Analyzer.throwException(new UndeclaredException(((SimpleNode)help_node.jjtGetChild(1)).image, class_node));
                return null;
            }
            for(Symbol s : helper.table.symbols.values()){
                class_ScopeNode.addSymbol(s, class_node);
            }
        }
        class_ScopeNode.data = class_defs;
        
        this_class_constructor.name = class_ScopeNode.name;
        this_class_constructor.data = new ArrayList<String>();
        this_class_constructor.type = Symbol.t_method_instance;
        ((ArrayList<String>)this_class_constructor.data).add(this_class_constructor.name);
        
        root_scope.addSymbol(this_class_constructor, class_node);
        root_scope.addChild(class_ScopeNode, class_node);

        if(class_node.jjtGetNumChildren() <= i){
            System.out.println("WARNING empty class "+class_ScopeNode.name);
            return class_ScopeNode;
        }
        help_node = (SimpleNode) class_node.jjtGetChild(i++);

        while(i < node_children && help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
            Analyzer.getVarDecl(help_node, class_ScopeNode, "class");
            help_node = (SimpleNode) class_node.jjtGetChild(i++);
        }
        method_start = i-1;

        while(true){        //Get method signatures
            if(help_node.id == JMMParserTreeConstants.JJTNORMALMETHOD){                 //Get methods
                Analyzer.getMethod(help_node, false, class_ScopeNode, true);
            }else if(help_node.id == JMMParserTreeConstants.JJTMAINMETHOD){             //Get main
                Analyzer.getMethod(help_node, true, class_ScopeNode, true);
            }else{
                Analyzer.throwException( new RuntimeException("1Unrecognized token "+help_node.id));
                return null;
            }
            if(i == node_children){
                break;
            }
            help_node = (SimpleNode) class_node.jjtGetChild(i++);
        }

        i = method_start;
        help_node = (SimpleNode) class_node.jjtGetChild(i++);
        
        while(true){        //Get method bodies
            if(help_node.id == JMMParserTreeConstants.JJTNORMALMETHOD){                 //Get methods
                Analyzer.getMethod(help_node, false, class_ScopeNode, false);
            }else if(help_node.id == JMMParserTreeConstants.JJTMAINMETHOD){             //Get main
                Analyzer.getMethod(help_node, true, class_ScopeNode, false);
            }else{
                Analyzer.throwException( new RuntimeException("2Unrecognized token "+help_node.id));
                return null;
            }
            if(i == node_children){
                break;
            }
            help_node = (SimpleNode) class_node.jjtGetChild(i++);
        }
        return class_ScopeNode;
    }
    /**
     * Retrieve an import
     * @param import_node The AST import node
     * @param root_scope The root scope
     */
    public static void getImport(SimpleNode import_node, ScopeNode root_scope){
        int node_children;
        SimpleNode help_node;
        int i;
        ScopeNode this_class_ScopeNode;        //Imported class
        ScopeNode this_import_method;        //Imported method
        ScopeNode this_constructor;        //Imported method
        ArrayList<String> types;
        ArrayList<String> names;


        this_class_ScopeNode = new ScopeNode(root_scope);
        this_import_method = new JasminMethod(this_class_ScopeNode);
        this_constructor = new JasminMethod(this_class_ScopeNode);
        types = new ArrayList<String>();
        names = new ArrayList<String>();
        node_children = import_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode) import_node.jjtGetChild(i++);

        if(help_node.id == JMMParserTreeConstants.JJTSTATIC){        //Is the method static?
            help_node = (SimpleNode) import_node.jjtGetChild(i++);
            this_import_method.type = Symbol.t_method_static;
        }else{
            this_import_method.type = Symbol.t_method_instance;
        }
        
        while(help_node.id == JMMParserTreeConstants.JJTIDENTIFIER && i < node_children){        //Get names (should only be 2)
            names.add(help_node.image);
            if(i == node_children){
                break;
            }
            help_node = (SimpleNode) import_node.jjtGetChild(i++);
        }

        if(names.size() > 2){
            System.out.println("Too many names in import, maximum of 2");
            System.exit(-1);
        }
        
        if(names.size() == 0){          //If is a simple method import (aka import Name;)
            names.add((((SimpleNode)import_node.jjtGetChild(0))).image);
        }

        this_class_ScopeNode.name = names.get(0);
        this_class_ScopeNode.type = Symbol.t_class;
        this_class_ScopeNode.data= null;        //Cant know what/if the class extends anything at all, so assume false

        try{        //Try to add class, if it is already present, retrieve it
            root_scope.addChild(this_class_ScopeNode, import_node);
        }catch(DuplicateException ex){
            this_class_ScopeNode = (ScopeNode)root_scope.getSymbol(this_class_ScopeNode.signature);
        }

        if(i < node_children){        //Get argument types
            help_node = (SimpleNode) import_node.jjtGetChild(i++);
            while(help_node.id == JMMParserTreeConstants.JJTTYPE){              //Get type
                types.add(help_node.image);
                if(i == node_children){
                    break;
                }
                help_node = (SimpleNode) import_node.jjtGetChild(i++);
            }
        }

        if(names.size() == 1){            //Can only be a constructor (impoort Name();)
            this_import_method.name = names.get(0);
            if(help_node.id == JMMParserTreeConstants.JJTRETURN){
                types.add(((SimpleNode)help_node.jjtGetChild(0)).image);
            }else{
                types.add(this_import_method.name); //Assume it returns the object if no other return type is present
            }
            this_import_method.data = types;
            try{//Try to add the method to the class symbol table (Java allows duplicate imports?)
                root_scope.addSymbol(this_import_method, import_node);
            }catch(DuplicateException ex){
                System.out.println("WARNING duplicate import on line "+import_node.firstToken.beginLine);
            }
        }else if(names.size() == 2){    //Add a return type, void if none present
            this_constructor.name = names.get(0);                           //Also create constructor
            this_constructor.data = new ArrayList<String>();
            ((ArrayList<String>)this_constructor.data).add(names.get(0));
            this_constructor.type = Symbol.t_method_instance;

            try{//Try to add the method to the class symbol table (Java allows duplicate imports?)
                root_scope.addSymbol(this_constructor, import_node);
            }catch(DuplicateException ex){
            }

            this_import_method.name = names.get(1);
            if(help_node.id == JMMParserTreeConstants.JJTRETURN){
                types.add(((SimpleNode)help_node.jjtGetChild(0)).image);
            }else{
                types.add("void");
            }
            this_import_method.data = types;
            
            try{//Try to add the method to the class symbol table (Java allows duplicate imports?)
                this_class_ScopeNode.addChild(this_import_method, import_node);
            }catch(DuplicateException ex){
                System.out.println("WARNING duplicate import on line "+import_node.firstToken.beginLine);
            }
        }else{
            System.out.println("PARSER MADE A MISTAKE");
            System.exit(-1);
        }
    }
    public static void throwAllExceptions(){
        if(Analyzer.current_exceptions != 0){
            System.out.println("Semantic exceptions: "+Analyzer.current_exceptions);
            for(int i = 0; i < Analyzer.current_exceptions; i++){
                System.out.println(Analyzer.thrown_exceptions[i]);
            }
            throw new RuntimeException("Semantic error");
        }
    }
    /**
     * Fully semantically parse the program AST inside root into a HIR
     * @param root The AST root node
     * @param filename The filename
     * @return The HIR root (HIR is a tree)
     */
    public static ScopeNode analyze(ScopeNode tree_root, SimpleNode root, String filename){
        SimpleNode node;
        ScopeNode classnode;
        int i;

        classnode = null;
        Analyzer.thrown_exceptions = new RuntimeException[Analyzer.max_exceptions];
        Analyzer.current_exceptions = 0;
        System.out.println("Analyzer starting on "+filename);
        
        if(root.id != JMMParserTreeConstants.JJTSTART){
            System.out.println("Wrong semantic start "+root.id);
            System.exit(-1);
        }
        
        i = 0;
        node = (SimpleNode)root.jjtGetChild(i++);
        
        Analyzer.debug_node = tree_root;
        tree_root.type = Symbol.t_file_root;
        tree_root.name = "root";
        
        while(node.id == JMMParserTreeConstants.JJTIMPORTDECLARATION){
            Analyzer.getImport(node, tree_root);
            node = (SimpleNode)root.jjtGetChild(i++);
        }
        
        
        try{
            classnode = Analyzer.getClass(node, tree_root);
        }catch(Exception ex){
            Analyzer.throwAllExceptions();
            throw ex;
        }
        Analyzer.throwAllExceptions();

        return classnode;
    }

}