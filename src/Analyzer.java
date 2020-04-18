import java.util.ArrayList;
import java.util.prefs.NodeChangeEvent;

public class Analyzer {
    public static TreeNode debug_node;
    /*
Errors to detect

Undeclared variable
Reserved identifier misuse.
Multiple declaration of variable in a scope.
Accessing an out of scope variable.
Actual and formal parameter mismatch.

Duplicate functions;
Function type mismatch;
Function does not return when it should;
Function not declared;
Wrong number of arguments for a function;
Wrong type of arguments;
Undefined arguments;
Repeated arguments;
Redefinition of global variables;
Type mismatches;
Detection of size as a variable instead of a property;
Variables previously defined as other types;
Undefined variables;
Confusion between arrays and variables;
Return type not declared;
Undefined arrays;
Detection if operations are done only with scalars;
Undefined indexes;
Return type mismatch; And many more.

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
     * @return The found symbol
     */
    public static Symbol getByIdentifier(String signature, TreeNode current_scope, SimpleNode n){
        Symbol helper = current_scope.getSymbol(signature);
        if(helper == null){
            throw new UndeclaredException("Undefined "+signature, n);
        }
        //System.out.println("\t\t\t\t>>>FOUND SYMBOL "+signature);
        return helper;
    }
    
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
        }else{
            //THIS ALSO INCLUDES ARRAYS AND STRINGS AND IT SHOULDNT
            if(!(lhs.return_type.equals("int"))){
                throw new IncompatibleException("Cannot perform operation on type: "+rhs, expr_node);
            }
        }
        expr.return_type = "int";
    }
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
            if(!checkBasicType(lhs.return_type)){
                throw new IncompatibleException("Cannot perform operation on type: "+rhs, expr_node);
            }
        }
        expr.return_type = "boolean";
    }
    /**
     * Handles Identifier() ( SelectorArguments() )?
     * @param method_node
     * @param scope
     * @return
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
    public static Expression getSelector(TreeNode scope){
        Expression this_expr = new Expression(scope);
        
        return this_expr;
    }
    /**
     * Follows the scopes in a method call / variable or array access
     * f.ex. A.B.C   the overall scope is the same when evaluating all
     * of them but B has A as a parent and C has B
     * @param follow_node The Node to follow
     * @param parent The parent expression (local scope, relative to the previous selector)
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
                this_expr.expression_type = Expression.t_array_access;

                break;
            case JMMParserTreeConstants.JJTSELECTOR:
                if(helper.id == JMMParserTreeConstants.JJTLENGTH){
                    this_expr.expression_type = Expression.t_access_length;
                    this_expr.return_type = "int";
                }else{
                    if(follow_node.jjtGetNumChildren() == 2){
                        this_expr.expression_type = Expression.t_method_access;
                        //Assemble method signature methodname(arg_type_1, ag_type_2,...)
                        //NEED TO ADD THE STRUCTURES AS ARGUMENTS AND BIND THEM TO THE OVERALL TREE STRUCTURE
                        String signature = getMethodSignature(follow_node, scope);
                        
                        this_expr.used_symbol = getByIdentifier(signature, parent_scope, follow_node);
                        //Get method return type
                        if(this_expr.used_symbol.type == Symbol.t_method_static && static_access == false){
                            throw new RuntimeException("Tried to access a static method from a non static scope "+this_expr.used_symbol.name);
                        }else if(this_expr.used_symbol.type == Symbol.t_method_instance && static_access == true){
                            throw new RuntimeException("Tried to access a non static method from a static scope "+this_expr.used_symbol.name);
                        }
                        ArrayList<String> a = (ArrayList<String>)this_expr.used_symbol.data;
                        //System.out.println(">>"+signature+" "+a.get(a.size()-1));
                        //System.out.flush();
                        this_expr.return_type = a.get(a.size()-1);
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
     * 
     * @param expr_node
     * @param current_scope
     * @return
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
        //System.out.println(JMMParserTreeConstants.jjtNodeName[expr_node.id]);
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
                    case Symbol.t_variable:
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

            break;
            //The next two cases start from a scope and follow it (down, unless they come across another identifier access)
            case JMMParserTreeConstants.JJTIDENTIFIERACCESS:
                //Get and use "remote"/higher scope/symbol
                //System.out.println("\t\t\t\t\t>>> neato burrito "+((SimpleNode)expr_node.jjtGetChild(0)).image);
                i = 1;
                if(node_children > 1){
                    //Started with a method (normally, being static or non static depends on the current method, but since methods must be non static, assume non static)
                    if(((SimpleNode)expr_node.jjtGetChild(1)).id == JMMParserTreeConstants.JJTSELECTORARGUMENTS){
                        expr.expression_type = Expression.t_method_access;
                        System.out.println("Fetching method");
                        
                        String signature = getMethodSignature(expr_node, current_scope);
                        expr.used_symbol = getByIdentifier(signature, current_scope, expr_node);
                        helper_al = ((ArrayList<String>)(expr.used_symbol.data));
                        System.out.println("method returns "+expr.used_symbol.name+" "+helper_al.get(helper_al.size()-1));
                        helper_expression = new Expression(current_scope);
                        helper_expression.return_type = helper_al.get(helper_al.size()-1);
                        i++;
                        
                        //expr.addChild(helper_expression);

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
                            static_access = false;
                            //If the return type isn't a class type, scope is inexistent
                            if(checkBasicType((String)expr.used_symbol.data)){
                                helper_scope = null;
                            }else{
                                helper_scope = (TreeNode)getByIdentifier((String)expr.used_symbol.data, current_scope, expr_node);
                            }
                        }

                        expr.expression_type = Expression.t_access;
                        helper_expression = new Expression((TreeNode)expr.used_symbol);
                        
                        //expr.addChild(helper_expression);
                        if(node_children < 2){
                            throw new RuntimeException("fuck");
                        }

                    }
                    
                    
                    while(i < node_children){
                        helper_expression = followScope((SimpleNode)expr_node.jjtGetChild(i++), helper_scope, static_access, current_scope);
                        helper_scope = helper_expression.used_symbol.scope;
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
                    System.out.println("FINAL RETURN "+expr.return_type);




                }else{
                    expr.used_symbol = getByIdentifier(((SimpleNode)expr_node.jjtGetChild(0)).image, current_scope, expr_node);
                    expr.expression_type = Expression.t_access;
                    if(expr.used_symbol.type == Symbol.t_class){
                        //expr.return_type = expr.used_symbol.name;
                        throw new RuntimeException("Cannot use class name in this context");
                    }else if(expr.used_symbol.type == Symbol.t_variable){
                        expr.return_type = (String)(expr.used_symbol.data);
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
                    helper_scope = helper_expression.used_symbol.scope;
                    expr.addChild(helper_expression);
                }
                expr.return_type = ((Expression)expr.nested_structures.get(expr.nested_structures.size()-1)).return_type;
                break;
            default:
                throw new RuntimeException("UNRECOGNIZED "+expr_node.id);
        }

        //while(i < node_children){

        //}
        return expr;
    }

    public static Structure getAttribution(SimpleNode attr_node, TreeNode current_scope){
        Structure this_attr;
        SimpleNode target;
        Expression helper1;
        Expression helper2;

        target = (SimpleNode)attr_node.jjtGetChild(0);
        this_attr = new Structure(current_scope);
        this_attr.type = Structure.t_attribution;

        //Check variable
        //System.out.println("Target variable: "+((SimpleNode)target.jjtGetChild(0)).image);
        getByIdentifier(((SimpleNode)target.jjtGetChild(0)).image, current_scope, attr_node);

        //                      TODO
        //Normal variable access or array access

        if(target.jjtGetNumChildren() > 1){
            //Array access
            //STILL NEED TO DO THIS
            //System.out.println("TARGET > 1 "+((SimpleNode)target.jjtGetChild(1)).image);
            this_attr.addChild(Analyzer.getExpression(((SimpleNode)target.jjtGetChild(1)), current_scope));
        }
        helper1 = Analyzer.getExpression((SimpleNode)target.jjtGetChild(0), current_scope);
        helper2 = Analyzer.getExpression((SimpleNode)attr_node.jjtGetChild(1), current_scope);

        if(!helper1.return_type.equals(helper2.return_type)){
            throw new IncompatibleException(helper1.return_type+" is incompatible with "+helper2.return_type, attr_node);
        }else{

        }
        this_attr.addChild(helper1);
        this_attr.addChild(helper2);
        

        if(attr_node.jjtGetNumChildren() != 2) {
            throw new RuntimeException("Wrong number of children on attribution "+attr_node.jjtGetNumChildren());
        }
        return this_attr;
    }

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

        //While head condition
        helper = Analyzer.getExpression((SimpleNode)help_node.jjtGetChild(0), current_scope);
        if(helper.return_type != "boolean"){
            throw new IncompatibleException("Cannot convert from "+helper.return_type+" to boolean", while_structure_node);
        }
        this_while.addChild(helper);

        //While body statements
        while(i < node_children){
            help_node = (SimpleNode)while_structure_node.jjtGetChild(i++);
            this_while.addChild(Analyzer.getStatement(help_node, current_scope));
        }

        return this_while;
    }
    
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

        //If head condition
        helper = Analyzer.getExpression((SimpleNode)help_node.jjtGetChild(0), current_scope);
        if(helper.return_type != "boolean"){
            throw new IncompatibleException("Cannot convert from "+helper.return_type+" to boolean", if_structure_node);
        }
        this_if.addChild(helper);

        //If body statements
        while(i < node_children && ((SimpleNode)if_structure_node.jjtGetChild(i)).id != JMMParserTreeConstants.JJTELSESTRUCTURE){
            help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
            this_if.addChild(Analyzer.getStatement(help_node, current_scope));
        }
        i++;
        //Else body statements
        while(i < node_children){
            help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
            this_if.addChild(Analyzer.getStatement(help_node, current_scope));
        }

        return this_if;
    }

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

    public static void getVarDecl(SimpleNode decl_node, TreeNode current_scope){
        Symbol this_variable = new Symbol();
        Symbol helper_symbol;

        this_variable.name = ((SimpleNode)decl_node.jjtGetChild(1)).image;
        this_variable.data = ((SimpleNode)decl_node.jjtGetChild(0)).image;
        this_variable.type = Symbol.t_variable;

        helper_symbol = current_scope.table.getSymbol(this_variable.name);
        if(helper_symbol != null){
            throw new DuplicateException("Variable already present", decl_node);
        }
        //System.out.println("Variable declared: "+this_variable.data+" "+this_variable.name);
        
        checkType((String)this_variable.data, current_scope, decl_node);

        current_scope.addSymbol(this_variable, decl_node);
    }

    public static TreeNode getMethod(SimpleNode method_node, Boolean ismain, TreeNode parent){
        SimpleNode help_node;
        int i;
        int node_children;
        TreeNode this_method;
        Symbol helper_symbol;
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
                //Add types for method signature
                types.add(((SimpleNode)help_node.jjtGetChild(j)).image);
                //Create argument variable (the first variables are the argument variables)
                helper_symbol = new Symbol();
                helper_symbol.type = Symbol.t_variable;
                helper_symbol.name = ((SimpleNode)help_node.jjtGetChild(j+1)).image;
                helper_symbol.data = ((SimpleNode)help_node.jjtGetChild(j)).image;

                checkType((String)helper_symbol.data, parent, method_node);

                argument_variables.add(helper_symbol);
            }
            //Last type is always the return type
            types.add(((SimpleNode)help_node.jjtGetChild(0)).image);
            checkType(((SimpleNode)help_node.jjtGetChild(0)).image, parent, method_node);

        }else{
            this_method.type = Symbol.t_method_static;
            this_method.name = "main";
            types.add("String[]");
            helper_symbol = new Symbol();
            helper_symbol.type = Symbol.t_variable;
            helper_symbol.name = ((SimpleNode)help_node).image;
            helper_symbol.data = "String[]";
            argument_variables.add(helper_symbol);
            //Last type is always the return type
            types.add("void");
        }
        this_method.data = types;
        //Add argument variables (needs to be done after creating the TreeNode)
        for(Symbol s: argument_variables){
            this_method.addSymbol(s, method_node);
        }
        //Search inside the method
        while(i < node_children){
            help_node = (SimpleNode) method_node.jjtGetChild(i++);
            //Add method variables
            if(help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
                Analyzer.getVarDecl(help_node, this_method);
            }else if(help_node.id == JMMParserTreeConstants.JJTRETURN){
            //Method return expression
                //Return only has 1 child
                Analyzer.getExpression((SimpleNode)help_node.jjtGetChild(0), this_method);
            }else{
            //Get statements
                Analyzer.getStatement(help_node, this_method);
            }
        }
        
        parent.addChild(this_method, method_node);
        return this_method;
    }

    public static void getClass(SimpleNode class_node, TreeNode root_scope){
        SimpleNode help_node;
        int i;
        int node_children;
        TreeNode class_treenode;
        ArrayList<Boolean> class_defs;

        node_children = class_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode) class_node.jjtGetChild(i++);
        class_defs = new ArrayList<Boolean>();
        class_treenode = new TreeNode(root_scope);
        class_treenode.name = ((SimpleNode)help_node.jjtGetChild(0)).image;
        class_treenode.type = Symbol.t_class;

        //Class extends
        if(help_node.jjtGetNumChildren() == 2){
            class_treenode.data = ((SimpleNode)help_node.jjtGetChild(1)).image;
            class_defs.add(true);
        }else{
            class_defs.add(false);
        }
        //Normal classes cant be static in J--
        class_defs.add(false);
        class_treenode.data = class_defs;
        
        root_scope.addChild(class_treenode, class_node);

        while(i < node_children){
            help_node = (SimpleNode) class_node.jjtGetChild(i++);
            //Get class variables
            if(help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
                Analyzer.getVarDecl(help_node, class_treenode);
            }else if(help_node.id == JMMParserTreeConstants.JJTNORMALMETHOD){
            //Get methods
                Analyzer.getMethod(help_node, false, class_treenode);
            }else if(help_node.id == JMMParserTreeConstants.JJTMAINMETHOD){
            //Get main
                Analyzer.getMethod(help_node, true, class_treenode);
            }else{
                throw new RuntimeException("Unrecognized token "+help_node.id);
            }
        }
    }

    public static void getImport(SimpleNode import_node, TreeNode root_scope){
        int node_children;
        SimpleNode help_node;
        int i;
        //Imported class
        TreeNode this_class_treenode;
        //Imported method
        Symbol this_import_method;
        ArrayList<String> types;
        ArrayList<String> names;

        this_import_method = new Symbol();
        this_class_treenode = new TreeNode(root_scope);
        types = new ArrayList<String>();
        names = new ArrayList<String>();

        node_children = import_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode) import_node.jjtGetChild(i++);

        //Is the method static?
        if(help_node.id == JMMParserTreeConstants.JJTSTATIC){
            help_node = (SimpleNode) import_node.jjtGetChild(i++);
            this_import_method.type = Symbol.t_method_static;
        }else{
            this_import_method.type = Symbol.t_method_instance;
        }
        
        //Get names (should only be 2)
        while(help_node.id == JMMParserTreeConstants.JJTIDENTIFIER && i < node_children){
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
        if(help_node.id != JMMParserTreeConstants.JJTIMPORTMETHOD){
            System.out.println("Non method imported, missing ()");
            System.exit(-1);
        }

        //For simplicity, since we can only have import1.import2, directly assume that the first is the class name and the second the method
        this_class_treenode.name = names.get(0);
        this_class_treenode.type = Symbol.t_class;
        //Cant know what/if the class extends anything at all, so assume false
        this_class_treenode.data= null;

        //Try to add class, if it is already present, retrieve it
        //Since we are in the import state, the nodes present in the root are all TreeNodes (thus, assuming the cast is valid)
        try{
            root_scope.addChild(this_class_treenode, import_node);
        }catch(DuplicateException ex){
            this_class_treenode = (TreeNode)root_scope.getSymbol(this_class_treenode.signature);
        }

        //Get argument types
        if(i < node_children){
            help_node = (SimpleNode) import_node.jjtGetChild(i++);
            while(help_node.id == JMMParserTreeConstants.JJTTYPE){              //Get type
                types.add(help_node.image);
                if(i == node_children){
                    break;
                }
                help_node = (SimpleNode) import_node.jjtGetChild(i++);
            }
        }
        if(names.size() == 1){
            //Can only be a constructor, and according to the professor
            this_import_method.name = names.get(0);
            if(help_node.id == JMMParserTreeConstants.JJTRETURN){
                types.add(((SimpleNode)help_node.jjtGetChild(0)).image);
            }else{
                //assume it returns the object if no other return type is present
                types.add(this_import_method.name);
            }
            this_import_method.data = types;
            
            //Try to add the method to the class symbol table
            try{
                root_scope.addSymbol(this_import_method, import_node);
            }catch(DuplicateException ex){
                throw new DuplicateException("Import "+ex, import_node);
            }
        }else if(names.size() == 2){
            this_import_method.name = names.get(1);
            //Add a return type, void if none present
            if(help_node.id == JMMParserTreeConstants.JJTRETURN){
                types.add(((SimpleNode)help_node.jjtGetChild(0)).image);
            }else{
                types.add("void");
            }
            this_import_method.data = types;

            //Try to add the method to the class symbol table
            try{
                this_class_treenode.addSymbol(this_import_method, import_node);
            }catch(DuplicateException ex){
                throw new DuplicateException("Import "+ex, import_node);
            }
        }else{
            System.out.println("PARSER MADE A MISTAKE");
            System.exit(-1);
        }

    }

    public static TreeNode analyze(SimpleNode root, String filename){
        SimpleNode node;
        int i;
        TreeNode tree_root;


        System.out.println("Analyzer starting");
        
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
        //tree_root.name = filename;
        
        while(node.id == JMMParserTreeConstants.JJTIMPORTDECLARATION){
            Analyzer.getImport(node, tree_root);
            node = (SimpleNode)root.jjtGetChild(i++);
        }
        //Root only has 1 child, which is the class itself
        Analyzer.getClass(node, tree_root);
        System.out.println("\n");
        //System.out.println("\t\t\t\t>>"+debug_node.getSymbol("MonteCarloPi"));
        //tree_root.evalT(0);
        return tree_root;
    }

}