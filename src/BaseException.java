
public class BaseException extends RuntimeException{
    public BaseException(String s, SimpleNode n){
        super(s+"\nOn line "+n.firstToken.beginLine);
        System.out.println();
        Analyzer.debug_node.evalT(0);
        //n.dump("");
        //*
        Token helper = n.firstToken;
        while(helper != n.lastToken){
            System.out.print(JMMParserConstants.tokenImage[helper.kind]);
            helper = helper.next;
        }
        System.out.println();
        //*/
    }
}