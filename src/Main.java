import java.io.InputStream;
import java.io.FileInputStream;

public class Main {

    public static void Usage(){
        System.out.println("Usage: java Main [-r=<num>] [-o] <input_file.jmm>");
        System.out.println("\tThe \"–r\" option tells the compiler to use only the first <num>2 local variables of the JVM when assigning the local variables used in each Java-- function to the local JVM variables.");
        System.out.println("\tWithout the \"–r\" option (similar to –r=0), the compiler will use the available JVM local variables to store the local variables used in each Java-- function.");
        System.out.println("\tWith the \"–o\" option, the compiler should perform a set of code optimizations.");
        System.exit(-1);
    }
	
	public static void main(String[] args) {
        return;
        /*
        if(args.length < 1){
            Usage();
        }

        String input_file = null;
        InputStream file_stream = null;
        int r = 0;
        boolean o = false;
        
        //Read arguments
        for(int i = 0; i < args.length; i++){
            if(args[i].substring(0,3).equals("-r=")){
                r = Integer.parseInt(args[i].substring(4));
            }else if(args[i].substring(0,2).equals("-o")){
                o = true;
            }else if(args[i].substring(args[i].length()-4, args[i].length()) == ".jmm"){
                input_file = args[i];
            }else{
                System.out.println("Could not understand argument \""+args[i]+"\"");
                Usage();
            }
        }

        //Read file
        try{
            //Instead of SYstem.in
            file_stream = new FileInputStream(input_file);
        }catch(Exception e){
            System.out.println("A problem occured while reading the file "+input_file);
            e.printStackTrace();
            System.exit(-1);
        }

        //JMMParser myparser = new JMMParser(file_stream);

        SimpleNode root = JMMParser.parse(file_stream);

        root.dump(""); // prints the tree on the screen
        */
	}

    public static int eval(SimpleNode node) {
        /*
        if (node.jjtGetNumChildren() == 0) // leaf node with integer value
            return node.val;
        else if (node.jjtGetNumChildren() == 1) // only one child
            return eval((SimpleNode) node.jjtGetChild(0));

        SimpleNode lhs = (SimpleNode) node.jjtGetChild(0); // left child
        SimpleNode rhs = (SimpleNode) node.jjtGetChild(1); // right child

        switch (node.id) {
        case CalculatorTreeConstants.JJTADD:
            return eval(lhs) + eval(rhs);
        case CalculatorTreeConstants.JJTSUB:
            return eval(lhs) - eval(rhs);
        case CalculatorTreeConstants.JJTMUL:
            return eval(lhs) * eval(rhs);
        case CalculatorTreeConstants.JJTDIV:
            return eval(lhs) / eval(rhs);
        default: // abort
            throw new RuntimeException("Ilegal operator!");
        }
        */
        return 0;

    }
	
}