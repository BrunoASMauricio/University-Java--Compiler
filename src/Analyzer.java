
public class Analyzer {
    /*
Errors to detect

Type mismatch
Undeclared variable
Reserved identifier misuse.
Multiple declaration of variable in a scope.
Accessing an out of scope variable.
Actual and formal parameter mismatch.

    */
    public static void getImport(SimpleNode import_node){
        int node_children;
        SimpleNode help_node;
        int i;

        if(import_node.id != JMMParserTreeConstants.JJTIMPORTDECLARATION){
            System.out.println("Wrong import node");
            System.exit(-1);
        }

        node_children = import_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode) import_node.jjtGetChild(i++);
        
        System.out.println("Location: ");
        while(help_node.id == JMMParserTreeConstants.JJTIDENTIFIER && i < node_children){        //Get location
            System.out.print(" "+help_node.image);
            if(i == node_children){
                break;
            }
            help_node = (SimpleNode) import_node.jjtGetChild(i++);
        }

        System.out.println("\nTypes: ");
        while(help_node.id == JMMParserTreeConstants.JJTTYPE){              //Get type
            System.out.print(" "+help_node.image);
            if(i == node_children){
                break;
            }
            help_node = (SimpleNode) import_node.jjtGetChild(i++);
        }

        if(help_node.id == JMMParserTreeConstants.JJTRETURN){
            System.out.println("\nReturn type: "+((SimpleNode)help_node.jjtGetChild(0)).image);
        }
        System.out.println();
    }
    /*
3 Attribution
    4 Target
        5 [ID: test_arr] 
    4 New
        5 [Int Constant: 5] 
3 Attribution
    4 Target
        5 [ID: test_arr] 
        5 ADD
            6 [Int Constant: 1] 
            6 [Int Constant: 2] 
    4 [Int Constant: 14] 
    
3 Attribution
    4 Target
        5 [ID: test_arr] 
        5 [Int Constant: 3] 
    4 SUB
        5 [Int Constant: 0] 
        5 [Int Constant: 5] 
    */
    public static void getExpression(SimpleNode expr_node){
        int node_children;
        int i;

        node_children = expr_node.jjtGetNumChildren();
        i = 0;

        if(node_children == 0){
            System.out.println();
            /*switch(){
                case JMMParserTreeConstants.JJTAND:
                break;
                case JMMParserTreeConstants.JJTLESSTHAN:
                break;
                case JMMParserTreeConstants.JJTADD:
                break;
                case JMMParserTreeConstants.JJTSUB:
                break;
                case JMMParserTreeConstants.JJTMUL:
                break;
                case JMMParserTreeConstants.JJTDIV:
                break;
            }*/
        }

        //while(i < node_children){

        //}
    }
    public static void getAttribution(SimpleNode attr_node){
        SimpleNode target = (SimpleNode)attr_node.jjtGetChild(0);
        System.out.println("Target variable: "+((SimpleNode)target.jjtGetChild(0)).image);
        if(target.jjtGetNumChildren() > 1){
            Analyzer.getExpression(((SimpleNode)target.jjtGetChild(1)));
        }

        Analyzer.getExpression((SimpleNode)attr_node.jjtGetChild(0));
    }

    public static void getVarDecl(SimpleNode decl_node){
        System.out.println("Var type: "+((SimpleNode)decl_node.jjtGetChild(0)).image);
        System.out.println("Var name: "+((SimpleNode)decl_node.jjtGetChild(1)).image);
    }

    public static void getWhile(SimpleNode while_structure_node){
        SimpleNode help_node;
        int i;
        int node_children;

        i = 0;
        help_node = (SimpleNode)while_structure_node.jjtGetChild(i++);
        node_children = while_structure_node.jjtGetNumChildren();

        System.out.println("If expression: ");
        Analyzer.getExpression(help_node);

        while(i < node_children){
            help_node = (SimpleNode)while_structure_node.jjtGetChild(i++);
            Analyzer.getStatement(help_node);
        }
    }
    
    public static void getIf(SimpleNode if_structure_node){
        SimpleNode help_node;
        int i;
        int node_children;

        i = 0;
        help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
        node_children = if_structure_node.jjtGetNumChildren();

        System.out.println("If expression: ");
        Analyzer.getExpression(help_node);

        while(i < node_children){
            help_node = (SimpleNode)if_structure_node.jjtGetChild(i++);
            Analyzer.getStatement(help_node);
        }
    }

    public static void getStatement(SimpleNode statement_node){
        if(statement_node.id == JMMParserTreeConstants.JJTIFSTRUCTURE){
            Analyzer.getIf(statement_node);
        }else if(statement_node.id == JMMParserTreeConstants.JJTWHILESTRUCTURE){
            Analyzer.getWhile(statement_node);
        }else if(statement_node.id == JMMParserTreeConstants.JJTATTRIBUTION){
            Analyzer.getAttribution(statement_node);
        }else if(statement_node.id == JMMParserTreeConstants.JJTDIRECTEXPRESSION){
            Analyzer.getExpression(statement_node);
        }else{
            System.out.println("Unrecognized token "+statement_node.id);
            //System.exit(-1);
        }
    }

    public static void getMethod(SimpleNode method_node, Boolean ismain){
        SimpleNode help_node;
        int i;
        int node_children;

        node_children = method_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode)method_node.jjtGetChild(i++);

        if(!ismain){          //Normal method head
            System.out.println("Method name: "+help_node.jjtGetChild(1));
            System.out.println("Return type: "+help_node.jjtGetChild(0));
    
            System.out.println("\nMethod arguments:");
            for(int j = 2; j < help_node.jjtGetNumChildren(); j+=2){
                System.out.println(((SimpleNode)help_node.jjtGetChild(j)).image+" "+((SimpleNode)help_node.jjtGetChild(j+1)).image);
            }
            System.out.println();
        }else{
            System.out.println("MAIN");
        }

        while(i < node_children){
            help_node = (SimpleNode) method_node.jjtGetChild(i++);
            if(help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
                Analyzer.getVarDecl(help_node);
            }else if(help_node.id == JMMParserTreeConstants.JJTRETURN){
                System.out.println("RETURN");
                Analyzer.getExpression(help_node);
            }else{
                Analyzer.getStatement(help_node);
            }
        }
    }

    public static void getClass(SimpleNode class_node){
        SimpleNode help_node;
        int i;
        int node_children;

        if(class_node.id != JMMParserTreeConstants.JJTCLASSDECLARATION){
            System.out.println("Wrong class node");
            System.exit(-1);
        }

        node_children = class_node.jjtGetNumChildren();
        i = 0;
        help_node = (SimpleNode) class_node.jjtGetChild(i++);

        System.out.println("Class name: "+((SimpleNode)help_node.jjtGetChild(0)).image);

        if(help_node.jjtGetNumChildren() == 2){
            System.out.println("Extends: "+((SimpleNode)help_node.jjtGetChild(1)).image);
        }

        while(i < node_children){
            help_node = (SimpleNode) class_node.jjtGetChild(i++);
            if(help_node.id == JMMParserTreeConstants.JJTVARDECLARATION){
                Analyzer.getVarDecl(help_node);
            }else if(help_node.id == JMMParserTreeConstants.JJTNORMALMETHOD){
                Analyzer.getMethod(help_node, false);
            }else if(help_node.id == JMMParserTreeConstants.JJTMAINMETHOD){
                Analyzer.getMethod(help_node, true);
            }else{
                System.out.println("Unrecognized token "+help_node.id);
            }
        }


    }

    public static void analyze(SimpleNode root){
        SimpleNode node;
        int i;

        System.out.println("Analyzer starting");
        
        if(root.id != JMMParserTreeConstants.JJTSTART){
            System.out.println("Wrong semantic start "+root.id);
            System.exit(-1);
        }
        
        i = 0;
        node = (SimpleNode)root.jjtGetChild(i++);

        while(node.id == JMMParserTreeConstants.JJTIMPORTDECLARATION){
            Analyzer.getImport(node);
            node = (SimpleNode)root.jjtGetChild(i++);
        }

        Analyzer.getClass(node);
    }

}