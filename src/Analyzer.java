import java.util.ArrayList;

import javax.management.RuntimeErrorException;

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
     * Looks for a type. If no basic type was found, looks for classes
     */
    public static void checkType(String type, TreeNode current_scope){
        Boolean ok = false;
        switch(type){
            case "int":
                ok = true;
                break;
            case "int[]":
                ok = true;
                break;
            case "boolean":
                ok = true;
                break;
            default:
                if(current_scope.getSymbol(type) != null){
                    ok = true;
                }
        }
        if(!ok){
            System.out.println("\t\t\t\t\t\tTYPE NOT OK ");
            throw new UndeclaredException("Undefined data type "+type);
        }
    }

    public static void getIdentifier(SimpleNode expr_node){

    }

    public static void getNew(SimpleNode new_node){
        //Can only be int[] or Identifier[] where Identifier must be an existing class
        SimpleNode help_node;
        int i;
        int node_children;

        i = 0;
        help_node = (SimpleNode)new_node.jjtGetChild(i++);
        node_children = new_node.jjtGetNumChildren();
        System.out.println(">>"+node_children);
    }

    public static void getThis(SimpleNode expr_node){
    }

    public static void getExpression(SimpleNode expr_node, TreeNode current_scope){
        int node_children;
        int i;

        node_children = expr_node.jjtGetNumChildren();
        i = 0;

        if(node_children == 0){
            System.out.println();
            switch(expr_node.id){
                //Boolean Operations
                case JMMParserTreeConstants.JJTAND:
                break;

                case JMMParserTreeConstants.JJTNEGATE:
                break;
                //Logic Comparisons
                case JMMParserTreeConstants.JJTLESSTHAN:
                break;

                //Arithmetic Operations
                case JMMParserTreeConstants.JJTADD:
                break;

                case JMMParserTreeConstants.JJTSUB:
                break;

                case JMMParserTreeConstants.JJTMUL:
                break;

                case JMMParserTreeConstants.JJTDIV:
                break;
                //Nodes
                case JMMParserTreeConstants.JJTINTCONST:
                break;

                case JMMParserTreeConstants.JJTBOOLCONST:
                break;

                case JMMParserTreeConstants.JJTIDENTIFIER:
                    Analyzer.getIdentifier(expr_node);
                break;

                case JMMParserTreeConstants.JJTTHIS:
                    Analyzer.getThis(expr_node);
                break;

                case JMMParserTreeConstants.JJTNEW:
                    Analyzer.getNew(expr_node);
                break;
                
                default:
                    System.out.println("UNRECOGNIZED "+expr_node.id);
                    System.exit(0);

            }
        }else{
            //System.out.println("WELL\n");
        }

        //while(i < node_children){

        //}
    }

    public static void getAttribution(SimpleNode attr_node, TreeNode current_scope){
        SimpleNode target = (SimpleNode)attr_node.jjtGetChild(0);
        System.out.println("Target variable: "+((SimpleNode)target.jjtGetChild(0)).image);
        //Check variable
        if(current_scope.getSymbol(((SimpleNode)target.jjtGetChild(0)).image) == null){
            throw new UndeclaredException("Undeclared Variable");
        }


        if(target.jjtGetNumChildren() > 1){
            Analyzer.getExpression(((SimpleNode)target.jjtGetChild(1)), current_scope);
        }

        Analyzer.getExpression((SimpleNode)attr_node.jjtGetChild(0), current_scope);
    }
    
    public static void getVarDecl(SimpleNode decl_node, TreeNode current_scope){
        Symbol this_variable = new Symbol();
        this_variable.name = ((SimpleNode)decl_node.jjtGetChild(1)).image;
        this_variable.data = ((SimpleNode)decl_node.jjtGetChild(0)).image;
        this_variable.type = Symbol.t_variable;
        System.out.println("Variable declaration: "+this_variable.data+" "+this_variable.name);

        checkType((String)this_variable.data, current_scope);
        current_scope.addSymbol(this_variable);
    }

    public static void getWhile(SimpleNode while_structure_node, TreeNode current_scope){
        SimpleNode help_node;
        int i;
        int node_children;

        i = 0;
        help_node = (SimpleNode)while_structure_node.jjtGetChild(i++);
        node_children = while_structure_node.jjtGetNumChildren();

        System.out.println("While expression: ");
        Analyzer.getExpression(help_node, current_scope);

        while(i < node_children){
            help_node = (SimpleNode)while_structure_node.jjtGetChild(i++);
            Analyzer.getStatement(help_node, current_scope);
        }
    }
    
    public static void getIf(SimpleNode if_structure_node, TreeNode current_scope){
        SimpleNode help_node;
        int i;
        int node_children;

        i = 0;
        help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
        node_children = if_structure_node.jjtGetNumChildren();

        System.out.println("If expression: ");
        Analyzer.getExpression(help_node, current_scope);

        while(i < node_children && ((SimpleNode)if_structure_node.jjtGetChild(i)).id != JMMParserTreeConstants.JJTELSESTRUCTURE){
            help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
            Analyzer.getStatement(help_node, current_scope);
        }
        i++;
        while(i < node_children){
            help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
            Analyzer.getStatement(help_node, current_scope);
        }
    }

    public static void getStatement(SimpleNode statement_node, TreeNode current_scope){
        if(statement_node.id == JMMParserTreeConstants.JJTIFSTRUCTURE){
            Analyzer.getIf(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTWHILESTRUCTURE){
            Analyzer.getWhile(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTATTRIBUTION){
            Analyzer.getAttribution(statement_node, current_scope);
        }else if(statement_node.id == JMMParserTreeConstants.JJTDIRECTEXPRESSION){
            Analyzer.getExpression(statement_node, current_scope);
        }else{
            System.out.println("Unrecognized token "+statement_node.id);
            System.exit(-1);
        }
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
        this_method.type = Symbol.t_method;

        //Get method details
        if(!ismain){          //Normal method head
            this_method.name = ((SimpleNode)help_node.jjtGetChild(1)).image;
            for(int j = 2; j < help_node.jjtGetNumChildren(); j+=2){
                //Add types for method signature
                types.add(((SimpleNode)help_node.jjtGetChild(j)).image);
                //Create argument variable (the first variables are the argument variables)
                helper_symbol = new Symbol();
                helper_symbol.type = Symbol.t_variable;
                helper_symbol.name = ((SimpleNode)help_node.jjtGetChild(j+1)).image;
                helper_symbol.data = ((SimpleNode)help_node.jjtGetChild(j)).image;

                checkType((String)helper_symbol.data, parent);

                argument_variables.add(helper_symbol);
            }
            //Last type is always the return type
            types.add(((SimpleNode)help_node.jjtGetChild(0)).image);
            checkType(((SimpleNode)help_node.jjtGetChild(0)).image, parent);

        }else{
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
            this_method.addSymbol(s);
        }
        //Search inside the method
        while(i < node_children){
            help_node = (SimpleNode) method_node.jjtGetChild(i++);
            //Add method variables
            if(help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
                Analyzer.getVarDecl(help_node, this_method);
            }else if(help_node.id == JMMParserTreeConstants.JJTRETURN){
            //Method return expression
                System.out.println("RETURN");
                Analyzer.getExpression(help_node, this_method);
            }else{
            //Get statements
                Analyzer.getStatement(help_node, this_method);
            }
        }
        debug_node = this_method;

        parent.addChild(this_method);
        return this_method;
    }

    public static void getClass(SimpleNode class_node, TreeNode root_scope){
        SimpleNode help_node;
        int i;
        int node_children;
        TreeNode class_treenode;
        ArrayList<Boolean> class_defs;

        if(class_node.id != JMMParserTreeConstants.JJTCLASSDECLARATION){
            System.out.println("Wrong class node");
            System.exit(-1);
        }

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
        
        root_scope.addChild(class_treenode);

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
        Symbol this_class_symbol;
        //Imported method
        Symbol this_import_method;
        ArrayList<String> types;
        ArrayList<String> names;
        ArrayList<Boolean> class_defs;

        if(import_node.id != JMMParserTreeConstants.JJTIMPORTDECLARATION){
            System.out.println("Wrong import node");
            System.exit(-1);
        }

        this_import_method = new Symbol();
        this_class_treenode = new TreeNode(root_scope);
        types = new ArrayList<String>();
        names = new ArrayList<String>();
        class_defs = new ArrayList<Boolean>();

        node_children = import_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode) import_node.jjtGetChild(i++);
        class_defs.add(false);  //Cant know what/if the class extends anything at all, so assume false
        //Is static?
        if(help_node.id == JMMParserTreeConstants.JJTSTATIC){
            help_node = (SimpleNode) import_node.jjtGetChild(i++);
            class_defs.add(true);
        }else{
            class_defs.add(false);
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
        this_class_treenode.data= class_defs;

        //Try to add class, if it is already present, retrieve it
        //Since we are in the import state, the nodes present in the root are all TreeNodes (thus, assuming the cast is valid)
        try{
            root_scope.addChild(this_class_treenode);
        }catch(DuplicateException ex){
            this_class_treenode = (TreeNode)root_scope.getSymbol(this_class_treenode.signature);
        }

        this_import_method.type = Symbol.t_method;
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
            //Can only be a constructor, and according to the professor, assume it returns the object if no other return type is present
            this_import_method.name = names.get(0);
            if(help_node.id == JMMParserTreeConstants.JJTRETURN){
                types.add(((SimpleNode)help_node.jjtGetChild(0)).image);
            }else{
                types.add(this_import_method.name);
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
        }else{
            System.out.println("PARSER MADE A MISTAKE");
            System.exit(-1);
        }

        //Try to add the method to the class symbol table
        try{
            this_class_treenode.addSymbol(this_import_method);
        }catch(DuplicateException ex){
            throw new DuplicateException("Import "+ex);
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
        System.out.println("\t\t\t\t>>"+debug_node.getSymbol("MonteCarloPi"));
        return tree_root;
    }

}