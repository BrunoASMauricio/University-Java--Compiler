import java.util.ArrayList;

public class Analyzer {
    public static TreeNode debug_node;
    /*
Errors to detect

V   Invalid Type
X   Invalid return type
V   Undefined variable name (on the current scope)
x   Arithmetic and lessthan opertions must only be performed on two int type variables
x   Logical expressions (ifs, whiles and boolean ands) must only be performed on booleans
V   Attribution compatibility
V   Array access must be with int return type
V   Method name and signature incompatibility



V    Undeclared variable
X    Reserved identifier misuse.
V    Multiple declaration of variable in a scope.
V    Accessing an out of scope variable. (undeclared variables or methods)
V    Duplicate functions;
V    Function type mismatch;
X    Function does not return when it should;
V    Wrong number of arguments for a function;
V    Wrong type of arguments;
X    Undefined arguments;
X    Repeated arguments;
V    Redefinition of global variables;
V    Type mismatches;
?    Detection of size as a variable instead of a property;
V    Variables previously defined as other types;
X    Confusion between arrays and variables;
X    Return type not declared;
V    Undefined arrays;
?    Detection if operations are done only with scalars;
V    Undefined indexes;
    */
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
    public static void checkType(String type, TreeNode current_scope, SimpleNode n){
        Symbol helper;
        if(!checkBasicType(type)){
            helper = current_scope.getSymbol(type);
            if(helper == null || helper.type != Symbol.t_class){
                throw new UndeclaredException("Undefined data type "+type, n);
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
    public static Symbol getByIdentifier(String signature, TreeNode current_scope, SimpleNode n){
        Symbol helper = current_scope.getSymbol(signature);
        if(helper == null){
            throw new UndeclaredException("Undefined "+signature, n);
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
            throw new RuntimeException("Operation should only have 2 children, current one has "+expr_node.jjtGetNumChildren()+", "+expr_node.id);
        }
        Expression lhs = getExpression((SimpleNode)expr_node.jjtGetChild(0) , expr.scope);
        Expression rhs = getExpression((SimpleNode)expr_node.jjtGetChild(1) , expr.scope);
        expr.nested_structures.add(lhs);
        expr.nested_structures.add(rhs);
        
        if(!lhs.return_type.equals(rhs.return_type)){
            throw new IncompatibleException("Incompatible types: "+lhs.return_type+" and "+rhs.return_type, expr_node);
        }else{//Only accept int return types
            if(!(lhs.return_type.equals("int"))){
                throw new IncompatibleException("Cannot perform operation on type: "+rhs, expr_node);
            }
        }
        expr.return_type = "int";
    }
    /**
     * Handles the Logic Operation expression (less than and and) that starts at node expr_node and sets an Expression object accordingly
     * @param expr_node The start of the operation
     * @param expr The target Expression object
     */
    public static void parseOperation(SimpleNode expr_node, Expression expr){
        if(expr_node.jjtGetNumChildren() != 2){
            throw new RuntimeException("Operation should only have 2 children, current one has "+expr_node.jjtGetNumChildren()+", "+expr_node.id);
        }
        Expression lhs = getExpression((SimpleNode)expr_node.jjtGetChild(0) , expr.scope);
        Expression rhs = getExpression((SimpleNode)expr_node.jjtGetChild(1) , expr.scope);
        expr.nested_structures.add(lhs);
        expr.nested_structures.add(rhs);
        
        if(!lhs.return_type.equals(rhs.return_type)){
            throw new IncompatibleException("Incompatible types: "+lhs.return_type+" and "+rhs.return_type, expr_node);
        }else{

            //WHAT EXACTLY IS TO BE DONE HERE? CAN BOOLEAN ANDS HANDLE INTS? CAN LESS THANS HANDLE BOOLEANS?

            if(!checkBasicType(lhs.return_type)){
                throw new IncompatibleException("Cannot perform operation on type: "+rhs, expr_node);
            }
        }
        expr.return_type = "boolean";
    }
    /**
     * Handles Identifier() ( SelectorArguments() )? type nodes, and returns the signature
     * @param method_node AST Node where the method starts (the node that contains Identifier() ( SelectorArguments() )? as the  2 children)
     * @param scope The current scope
     * @return The method signature
     */
    public static String getMethodSignature(SimpleNode method_node, TreeNode scope){
        String signature = ((SimpleNode)method_node.jjtGetChild(0)).image+"(";
        Expression help_expr;

        for(int i = 0; i < method_node.jjtGetChild(1).jjtGetNumChildren(); i++){
            //Each argument is based on an expression that has a return type, and is scope
            //bound to the "line" scope and not the previous call scopes
            help_expr = getExpression((SimpleNode)method_node.jjtGetChild(1).jjtGetChild(i), scope);
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
    public static void getArrayAccess(Expression this_expr, SimpleNode arr_expr_node, TreeNode scope){
        Expression helper_expr;

        this_expr.expression_type = Expression.t_array_access;
        helper_expr = getExpression(arr_expr_node, scope);
        this_expr.addChild(helper_expr);
        //this_expr.data = helper_expr;
        this_expr.return_type = helper_expr.return_type;
        if(this_expr.return_type != "int"){
            throw new IncompatibleException("Array accesses must be of type int and not "+this_expr.return_type, arr_expr_node);
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
    public static Expression followScope(SimpleNode follow_node, TreeNode parent_scope, Boolean static_access, TreeNode scope){
        SimpleNode helper;
        Expression this_expr;
        
        helper = (SimpleNode)follow_node.jjtGetChild(0);
        if(parent_scope == null){
            throw new RuntimeException("Invalid scope");
        }
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
                    if(follow_node.jjtGetNumChildren() == 2){
                        this_expr.expression_type = Expression.t_method_access;
                        String signature = getMethodSignature(follow_node, scope);
                        this_expr.used_symbol = getByIdentifier(signature, parent_scope, follow_node);

                        if(this_expr.used_symbol.type == Symbol.t_method_static && static_access == false){
                            throw new RuntimeException("Tried to access a static method from a non static scope "+this_expr.used_symbol.name);
                        }else if(this_expr.used_symbol.type == Symbol.t_method_instance && static_access == true){
                            throw new RuntimeException("Tried to access a non static method from a static scope "+this_expr.used_symbol.name);
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
                throw new RuntimeException("Unexpected token type "+follow_node.id+" inside a selection");
        }
        return this_expr;
    }
    /**
     * Retrieves a general Expression
     * @param expr_node Expressions start node
     * @param current_scope Current scope
     * @return The return type of the expression
     */
    public static Expression getExpression(SimpleNode expr_node, TreeNode current_scope){
        int node_children;
        int i;
        Expression expr;
        Symbol helper_symbol;
        Expression helper_expression;
        ArrayList<String> helper_al;
        TreeNode helper_scope;
        Boolean static_access;
        String str_helper;

        node_children = expr_node.jjtGetNumChildren();
        i = 0;
        expr = new Expression(current_scope);
        expr.type = Structure.t_expression;
        //System.out.println(">>>>"+JMMParserTreeConstants.jjtNodeName[expr_node.id]);
        switch(expr_node.id){
            //Operations
            case JMMParserTreeConstants.JJTAND:
                expr.expression_type = Expression.t_and;
                parseOperation(expr_node, expr);
                expr.return_type = "boolean";
                break;
            case JMMParserTreeConstants.JJTLESSTHAN:
                expr.expression_type = Expression.t_lessthan;
                parseOperation(expr_node, expr);
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
                        throw new UninitializedException("Variable "+helper_symbol.name+" not initialized ", expr_node);
                    case Symbol.t_variable_init:
                        expr.return_type = (String)helper_symbol.data;
                        break;
                    case Symbol.t_class:
                        expr.return_type = helper_symbol.name;
                        break;
                    default:
                        throw new RuntimeException("Wrong Identifier type "+helper_symbol.type);
                }
                break;
            case JMMParserTreeConstants.JJTNEGATE:
                expr.expression_type = Expression.t_negate;
                if(expr_node.jjtGetNumChildren() != 1){
                    throw new RuntimeException("Wrong ammount of children, negate should only have 1 child, not "+expr_node.jjtGetNumChildren());
                }
                helper_expression = getExpression((SimpleNode)expr_node.jjtGetChild(0), current_scope);
                if(helper_expression.return_type != "boolean"){
                    throw new IncompatibleException("Cannot convert from "+helper_expression.return_type+" to boolean", expr_node);
                }
                expr.addChild(helper_expression);
                expr.return_type = "boolean";
                break;

            case JMMParserTreeConstants.JJTDIRECTEXPRESSION:
                if(expr_node.jjtGetNumChildren() != 1){
                    throw new RuntimeException("Parser issue! Wrong ammount of children for direct expression "+expr_node.jjtGetNumChildren());
                }
                return getExpression((SimpleNode)expr_node.jjtGetChild(0), current_scope);
            
            case JMMParserTreeConstants.JJTNEW:
                //Can only be int[] or Identifier[] where Identifier must be an existing class
                if(((SimpleNode)expr_node.jjtGetChild(0)).id != JMMParserTreeConstants.JJTIDENTIFIER){
                    expr.expression_type = Expression.t_int_array;
                    expr.return_type = "int[]";
                    expr.data = Analyzer.getExpression((SimpleNode)expr_node.jjtGetChild(0), current_scope);
                    break;
                }

            //The next two cases start from a scope and follow it (down, unless they come across another identifier access)
            case JMMParserTreeConstants.JJTIDENTIFIERACCESS:
                //Get and use "remote"/higher scope/symbol
                i = 1;
                if(node_children > 1){
                    //Started with a method (normally, being static or non static depends on the current method, but since methods must be non static, assume non static)
                    if(((SimpleNode)expr_node.jjtGetChild(1)).id == JMMParserTreeConstants.JJTSELECTORARGUMENTS || expr_node.id == JMMParserTreeConstants.JJTNEW){
                        expr.expression_type = Expression.t_method_access;
                        
                        String signature = getMethodSignature(expr_node, current_scope);
                        
                        //System.out.println("Fetching method "+signature);
                        
                        expr.used_symbol = getByIdentifier(signature, current_scope, expr_node);
                        helper_al = ((ArrayList<String>)(expr.used_symbol.data));
                        //System.out.println("method returns "+expr.used_symbol.name+" "+helper_al.get(helper_al.size()-1));
                        helper_expression = new Expression(current_scope);
                        helper_expression.return_type = helper_al.get(helper_al.size()-1);
                        i++;
                        
                        expr.addChild(helper_expression);

                        static_access = false;
                        //See if the return type is a class, or not
                        str_helper = helper_al.get(helper_al.size()-1);
                        if(checkBasicType(str_helper)){
                            helper_scope = null;
                        }else{
                            helper_scope = (TreeNode)current_scope.getSymbol(str_helper);
                            if(helper_scope.type != Symbol.t_class){
                                throw new RuntimeException("Undefined beahaviour "+helper_scope.type);
                            }
                        }

                    }else{
                        expr.used_symbol = getByIdentifier(((SimpleNode)expr_node.jjtGetChild(0)).image, current_scope, expr_node);
                        //Type of access
                        if(expr.used_symbol.type == Symbol.t_class){
                            static_access = true;
                            helper_scope = (TreeNode)(expr.used_symbol);
                        }else{
                            if(expr.used_symbol.type == Symbol.t_variable_ninit){
                                throw new UninitializedException("Variable "+expr.used_symbol.name+" not initialized ",expr_node);
                            }
                            static_access = false;
                            //If the return type isn't a class type, scope is inexistent
                            if(checkBasicType((String)expr.used_symbol.data)){
                                helper_scope = current_scope;
                            }else{
                                helper_scope = (TreeNode)getByIdentifier((String)expr.used_symbol.data, current_scope, expr_node);
                                expr.used_symbol = helper_scope;
                            }
                        }

                        expr.expression_type = Expression.t_access;
                        if(node_children < 2){
                            throw new RuntimeException("fuck");
                        }
                    }
                    
                    while(i < node_children){

                        helper_expression = followScope((SimpleNode)expr_node.jjtGetChild(i++), helper_scope, static_access, current_scope);
                        
                        expr.addChild(helper_expression);
                        static_access = false;
                        if(checkBasicType(helper_expression.return_type) || helper_expression.return_type.equals("void")){
                            helper_scope = null;
                        }else{
                            helper_scope = (TreeNode)current_scope.getSymbol(helper_expression.return_type);
                            if(helper_scope.type != Symbol.t_class){
                                throw new RuntimeException("Undefined beahaviour "+helper_expression.return_type);
                            }
                        }


                    }
                    expr.return_type = ((Expression)expr.nested_structures.get(expr.nested_structures.size()-1)).return_type;
                }else{
                    //Variable access
                    expr.used_symbol = getByIdentifier(((SimpleNode)expr_node.jjtGetChild(0)).image, current_scope, expr_node);
                    if(expr.used_symbol.type == Symbol.t_variable_ninit){
                        throw new UninitializedException("Variable "+expr.used_symbol.name+" not initialized ",expr_node);
                    }
                    expr.expression_type = Expression.t_access;
                    if(expr.used_symbol.type == Symbol.t_class){
                        throw new RuntimeException("Cannot use class name in this context");
                    }else if(expr.used_symbol.type == Symbol.t_variable_ninit || expr.used_symbol.type == Symbol.t_variable_init){
                        expr.return_type = (String)(expr.used_symbol.data);
                        expr.used_symbol.type = Symbol.t_variable_init;
                    }else{
                        throw new RuntimeException("unexpected symbol type "+expr.used_symbol.type);
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
                        throw new RuntimeException("Scope parent is null, can't find class");
                    }
                }
                while(i < node_children){
                    helper_expression = followScope((SimpleNode)expr_node.jjtGetChild(i++), helper_scope, false,  current_scope);
                    //helper_scope = helper_expression.used_symbol.scope;
                    if(checkBasicType(helper_expression.return_type) || helper_expression.return_type.equals("void")){
                        helper_scope = null;
                    }else{
                        helper_scope = (TreeNode)current_scope.getSymbol(helper_expression.return_type);
                        if(helper_scope.type != Symbol.t_class){
                            throw new RuntimeException("Undefined beahaviour "+helper_expression.return_type);
                        }
                    }
                    expr.addChild(helper_expression);
                }
                expr.return_type = ((Expression)expr.nested_structures.get(expr.nested_structures.size()-1)).return_type;
                break;
            case JMMParserTreeConstants.JJTARRAYACCESS:
                Analyzer.getArrayAccess(expr, (SimpleNode)expr_node.jjtGetChild(0), current_scope);
                break;
            default:
                throw new RuntimeException("UNRECOGNIZED "+expr_node.id);
        }
        return expr;
    }
    /**
     * Handles a variable attribution ( Target() <EQ> Expression() <SC> )
     * @param attr_node The AST node
     * @param current_scope The current scope
     * @return A structure holding the attribution
     */
    public static Structure getAttribution(SimpleNode attr_node, TreeNode current_scope){
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
                throw new RuntimeException("Wrong Identifier type "+target_symbol.type);
        }

        if(target.jjtGetNumChildren() > 1){
            //Array access (array must itself be initialized)
            if(target_symbol.type == Symbol.t_variable_ninit){
                throw new UninitializedException("Variable "+target_symbol.name+" not initialized ",attr_node);
            }
            helper3 = Analyzer.getExpression((SimpleNode)target.jjtGetChild(1), current_scope);
            if(!helper3.return_type.equals("int")){
                throw new IncompatibleException("Array access must be int, not "+helper3.return_type,attr_node);
            }
            helper1.return_type = "int";    //Arrays con only be of type int, so the required return_type for the left needs to be int now
        }
        target_symbol.type = Symbol.t_variable_init;

        helper2 = Analyzer.getExpression((SimpleNode)attr_node.jjtGetChild(1), current_scope);

        if(!helper1.return_type.equals(helper2.return_type)){
            throw new IncompatibleException(helper1.return_type+" is incompatible with "+helper2.return_type, attr_node);
        }
        this_attr.addChild(helper1);
        if(helper3 != null){
            this_attr.addChild(helper3);
        }
        this_attr.addChild(helper2);
        
        if(attr_node.jjtGetNumChildren() != 2) {
            throw new RuntimeException("Wrong number of children on attribution "+attr_node.jjtGetNumChildren());
        }
        return this_attr;
    }
    /**
     * Retrieves a while structure
     * @param while_structure_node The starting AST node
     * @param current_scope The current scope
     * @return The generated structure
     */
    public static Structure getWhile(SimpleNode while_structure_node, TreeNode current_scope){
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
            throw new IncompatibleException("Cannot convert from "+helper.return_type+" to boolean", while_structure_node);
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
    public static Structure getIf(SimpleNode if_structure_node, TreeNode current_scope){
        SimpleNode help_node;
        int i;
        int node_children;
        Expression helper;
        Structure this_if;

        i = 0;
        help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
        node_children = if_structure_node.jjtGetNumChildren();

        this_if = new Structure(current_scope);
        this_if.type = Structure.t_if;

        helper = Analyzer.getExpression((SimpleNode)help_node.jjtGetChild(0), current_scope);   //If head condition
        if(helper.return_type != "boolean"){
            throw new IncompatibleException("Cannot convert from "+helper.return_type+" to boolean", if_structure_node);
        }
        this_if.addChild(helper);

        while(i < node_children && ((SimpleNode)if_structure_node.jjtGetChild(i)).id != JMMParserTreeConstants.JJTELSESTRUCTURE){   //If body statements
            help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
            this_if.addChild(Analyzer.getStatement(help_node, current_scope));
        }
        i++;
    
        while(i < node_children){                                                               //Else body statements
            help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
            this_if.addChild(Analyzer.getStatement(help_node, current_scope));
        }

        return this_if;
    }
    /**
     * Retrieves a general statement
     * @param statement_node The starting AST statement node
     * @param current_scope The current scope
     * @return The generated structure object
     */
    public static Structure getStatement(SimpleNode statement_node, TreeNode current_scope){
        if(statement_node.id == JMMParserTreeConstants.JJTIFSTRUCTURE){
            return Analyzer.getIf(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTWHILESTRUCTURE){
            return Analyzer.getWhile(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTATTRIBUTION){
            return Analyzer.getAttribution(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTDIRECTEXPRESSION){
            return Analyzer.getExpression(statement_node, current_scope);
        }else{
            throw new RuntimeException("Unrecognized token "+statement_node.id);
        }
    }
    /**
     * Retrieves a variable declaration
     * @param decl_node The AST node
     * @param current_scope The current scope
     */
    public static void getVarDecl(SimpleNode decl_node, TreeNode current_scope){
        Symbol this_variable = new Symbol();
        Symbol helper_symbol;

        this_variable.name = ((SimpleNode)decl_node.jjtGetChild(1)).image;
        this_variable.data = ((SimpleNode)decl_node.jjtGetChild(0)).image;
        this_variable.type = Symbol.t_variable_ninit;

        helper_symbol = current_scope.table.getSymbol(this_variable.name);
        if(helper_symbol != null){
            throw new DuplicateException("Variable already present", decl_node);
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
    public static void getMethod(SimpleNode method_node, Boolean ismain, TreeNode parent, Boolean only_head){
        SimpleNode help_node;
        int i;
        int node_children;
        TreeNode this_method;
        Symbol helper_symbol;
        String return_type;
        ArrayList<String> types = new ArrayList<String>();
        ArrayList<Symbol> argument_variables = new ArrayList<Symbol>();

        this_method =  new TreeNode(parent);
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
        for(Symbol s: argument_variables){          //Add argument variables as symbols
            this_method.addSymbol(s, method_node);
        }
        
        if(only_head == true){
            parent.addChild(this_method, method_node);
            return;
        }else{
            TreeNode.buildSignature(this_method);
            this_method = (TreeNode)parent.getSymbol(this_method.signature);
        }

        while(i < node_children){                                               //Search inside the method
            help_node = (SimpleNode) method_node.jjtGetChild(i++);

            if(help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
                Analyzer.getVarDecl(help_node, this_method);
            }else if(help_node.id == JMMParserTreeConstants.JJTRETURN){         //Method return expression
                Expression h = Analyzer.getExpression((SimpleNode)help_node.jjtGetChild(0), this_method);
                if(!return_type.equals(h.return_type)){
                    throw new IncompatibleException("Incompatible return type, can't convert from "+h.return_type+" to "+return_type, method_node);
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
    }
    /**
     * Retrieve a full class
     * @param class_node The AST class node
     * @param root_scope The root scope
     */
    public static void getClass(SimpleNode class_node, TreeNode root_scope){
        SimpleNode help_node;
        int i;
        int method_start;
        int node_children;
        TreeNode class_treenode;
        Symbol this_class_constructor;        //Default constructor
        TreeNode helper;
        String class_defs;

        node_children = class_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode) class_node.jjtGetChild(i++);
        class_defs = "";
        class_treenode = new TreeNode(root_scope);
        class_treenode.name = ((SimpleNode)help_node.jjtGetChild(0)).image;
        class_treenode.type = Symbol.t_class;
        this_class_constructor = new Symbol();

        if(help_node.jjtGetNumChildren() == 2){        //Class extends
            class_defs = ((SimpleNode)help_node.jjtGetChild(1)).image;
            helper = (TreeNode)root_scope.getSymbol(((SimpleNode)help_node.jjtGetChild(1)).image);
            if(helper == null){
                throw new UndeclaredException("Undefined "+((SimpleNode)help_node.jjtGetChild(1)).image, class_node);
            }
            for(Symbol s : helper.table.symbols.values()){
                class_treenode.addSymbol(s, class_node);
            }
        }
        class_treenode.data = class_defs;
        
        this_class_constructor.name = class_treenode.name;
        this_class_constructor.data = new ArrayList<String>();
        this_class_constructor.type = Symbol.t_method_instance;
        ((ArrayList<String>)this_class_constructor.data).add(this_class_constructor.name);
        
        root_scope.addSymbol(this_class_constructor, class_node);
        root_scope.addChild(class_treenode, class_node);
        if(class_node.jjtGetNumChildren() <= i){
            System.out.println("WARNING empty class"+class_treenode.name);
            return;
        }
        help_node = (SimpleNode) class_node.jjtGetChild(i++);

        while(i < node_children && help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
            Analyzer.getVarDecl(help_node, class_treenode);
            help_node = (SimpleNode) class_node.jjtGetChild(i++);
        }
        method_start = i-1;

        while(true){        //Get method signatures
            if(help_node.id == JMMParserTreeConstants.JJTNORMALMETHOD){                 //Get methods
                Analyzer.getMethod(help_node, false, class_treenode, true);
            }else if(help_node.id == JMMParserTreeConstants.JJTMAINMETHOD){             //Get main
                Analyzer.getMethod(help_node, true, class_treenode, true);
            }else{
                throw new RuntimeException("1Unrecognized token "+help_node.id);
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
                Analyzer.getMethod(help_node, false, class_treenode, false);
            }else if(help_node.id == JMMParserTreeConstants.JJTMAINMETHOD){             //Get main
                Analyzer.getMethod(help_node, true, class_treenode, false);
            }else{
                throw new RuntimeException("2Unrecognized token "+help_node.id);
            }
            if(i == node_children){
                break;
            }
            help_node = (SimpleNode) class_node.jjtGetChild(i++);
        }
    }
    /**
     * Retrieve an import
     * @param import_node The AST import node
     * @param root_scope The root scope
     */
    public static void getImport(SimpleNode import_node, TreeNode root_scope){
        int node_children;
        SimpleNode help_node;
        int i;
        TreeNode this_class_treenode;        //Imported class
        Symbol this_import_method;        //Imported method
        Symbol this_constructor;        //Imported method
        ArrayList<String> types;
        ArrayList<String> names;

        this_import_method = new Symbol();
        this_constructor = new Symbol();
        this_class_treenode = new TreeNode(root_scope);
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

        this_class_treenode.name = names.get(0);
        this_class_treenode.type = Symbol.t_class;
        this_class_treenode.data= null;        //Cant know what/if the class extends anything at all, so assume false

        try{        //Try to add class, if it is already present, retrieve it
            root_scope.addChild(this_class_treenode, import_node);
        }catch(DuplicateException ex){
            this_class_treenode = (TreeNode)root_scope.getSymbol(this_class_treenode.signature);
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
                this_class_treenode.addSymbol(this_import_method, import_node);
            }catch(DuplicateException ex){
                System.out.println("WARNING duplicate import on line "+import_node.firstToken.beginLine);
            }
        }else{
            System.out.println("PARSER MADE A MISTAKE");
            System.exit(-1);
        }
    }
    /**
     * Fully semantically parse the program AST inside root into a HIR
     * @param root The AST root node
     * @param filename The filename
     * @return The HIR root (HIR is a tree)
     */
    public static TreeNode analyze(SimpleNode root, String filename){
        SimpleNode node;
        int i;
        TreeNode tree_root;

        System.out.println("Analyzer starting on "+filename);
        
        if(root.id != JMMParserTreeConstants.JJTSTART){
            System.out.println("Wrong semantic start "+root.id);
            System.exit(-1);
        }
        
        i = 0;
        node = (SimpleNode)root.jjtGetChild(i++);
        tree_root = new TreeNode(null);

        Analyzer.debug_node = tree_root;
        tree_root.type = Symbol.t_file_root;
        tree_root.name = "root";
        
        while(node.id == JMMParserTreeConstants.JJTIMPORTDECLARATION){
            Analyzer.getImport(node, tree_root);
            node = (SimpleNode)root.jjtGetChild(i++);
        }
        
        Analyzer.getClass(node, tree_root);
        System.out.println("\n");
        tree_root.evalT(0);
        return tree_root;
    }

}