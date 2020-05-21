public class SyntaxToSemanticOptimizations {

    public static void constantFolding(SimpleNode node){
        SimpleNode lhs;
        SimpleNode rhs;
        int n_children = node.jjtGetNumChildren();

        for(int i = 0; i < n_children; i++){
            constantFolding((SimpleNode) node.jjtGetChild(i));
        }
        
        //Dont care for semantic illegalities here, they are parsed later
        if(n_children == 2){
            lhs = (SimpleNode)node.jjtGetChild(0);
            rhs = (SimpleNode)node.jjtGetChild(1);
            if(lhs.id == JMMParserTreeConstants.JJTINTCONST && rhs.id == JMMParserTreeConstants.JJTINTCONST){
                switch(node.id){
                    case JMMParserTreeConstants.JJTADD:
                        node.id = JMMParserTreeConstants.JJTINTCONST;
                        node.int_val = lhs.int_val + rhs.int_val;
                        node.children = new Node[0];
                        break;
                    
                    case JMMParserTreeConstants.JJTMUL:
                        node.id = JMMParserTreeConstants.JJTINTCONST;
                        node.int_val = lhs.int_val * rhs.int_val;
                        break;
                    
                    case JMMParserTreeConstants.JJTDIV:
                        if(rhs.int_val == 0){
                            break;
                        }
                        node.id = JMMParserTreeConstants.JJTINTCONST;
                        node.int_val = lhs.int_val / rhs.int_val;
                        break;
                    
                    case JMMParserTreeConstants.JJTSUB:
                        node.id = JMMParserTreeConstants.JJTINTCONST;
                        node.int_val = lhs.int_val - rhs.int_val;
                        break;
                        
                    case JMMParserTreeConstants.JJTLESSTHAN:
                        node.id = JMMParserTreeConstants.JJTBOOLCONST;
                        node.bool_val = lhs.int_val < rhs.int_val;
                        break;
                }
            }else if(rhs.id == JMMParserTreeConstants.JJTBOOLCONST && lhs.id == JMMParserTreeConstants.JJTBOOLCONST){
                switch(node.id){
                    case JMMParserTreeConstants.JJTAND:
                        node.id = JMMParserTreeConstants.JJTBOOLCONST;
                        node.bool_val = lhs.bool_val && rhs.bool_val;
                        break;
                }
            }

        }
    }

    public static void Optimize(SimpleNode ASTRoot){
        constantFolding(ASTRoot);
    }
}