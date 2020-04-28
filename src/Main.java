import java.io.InputStream;
import java.io.FileInputStream;
import java.io.PrintWriter;

public class Main {

    public static void Usage(){
        System.out.println("Usage: java Main [-r=<num>] [-o] <input_file.jmm> [-v=<0|1|2|3>]");
        System.out.println("");
        System.out.println("\tThe \"–r\" option tells the compiler to use only the first <num> local variables of the JVM when assigning the local variables used in each Java-- function to the local JVM variables.");
        System.out.println("\tWithout the \"–r\" option (similar to –r=0), the compiler will use the available JVM local variables to store the local variables used in each Java-- function.");
        System.out.println("\tWith the \"–o\" option, the compiler should perform a set of code optimizations.");
        System.out.println("\tThe \"–v\" option, defines the verbose output type.");
        System.out.println("\t\t0: No console output (DEFAULT)");
        System.out.println("\t\t1: Only syntactic output");
        System.out.println("\t\t2: Semantic output and higher");
        System.out.println("\t\t3: jasmin output and higher");
        System.exit(-1);
    }
	
	public static void main(String[] args) throws Exception{
        if(args.length < 1){
            Usage();
        }
        
        String input_file = null;
        InputStream file_stream = null;
        int r = 0;
        int v = 0;
        boolean o = false;
        SimpleNode AST_root = null;
        TreeNode semantic_class_root = null;
        TreeNode semantic_file_root = null;
        
        //Read arguments
        for(int i = 0; i < args.length; i++){
            if(args[i].substring(0,3).equals("-v=")){
                v = Integer.parseInt(args[i].substring(3));
            }else if(args[i].substring(0,3).equals("-r=")){
                r = Integer.parseInt(args[i].substring(3));
            }else if(args[i].substring(0,2).equals("-o")){
                o = true;
            }else if(args[i].substring(args[i].length()-4, args[i].length()).equals(".jmm")){
                input_file = args[i];
            }else{
                System.out.println("Could not understand argument \""+args[i]+"\"");
                Usage();
            }
        }
        System.out.println("Parsing file "+input_file);
        //Read file
        try{
            //Instead of System.in
            file_stream = new FileInputStream(input_file);
        }catch(Exception e){
            System.out.println("A problem occured while reading the file "+input_file);
            e.printStackTrace();
            System.exit(-1);
        }

        //                  USE SYNTAX PARSER TO GENERATE SimpleNode TREE

        try{
            AST_root = JMMParser.parse(file_stream);
            if(v > 0){
                JMMParser.eval(AST_root, 0);
            }
        }catch(Exception ex){
            ex.printStackTrace();
            throw new RuntimeException("Syntatical error");
        }

        //                  USE SEMANTIC ANALYZER TO GENERATE Scope TREE

        try{
            semantic_file_root = new TreeNode(null);
            semantic_class_root = Analyzer.analyze(semantic_file_root, AST_root, input_file);
            if(v > 1){
                semantic_file_root.evalT(0);
            }
        }catch(Exception ex){
            ex.printStackTrace(); 
            throw new RuntimeException("Semantic error");
        }
        

        //                      USE THE Scope TREE TO GENERATE JASMIN CODE

        try{
            Jasminify.start(semantic_file_root, semantic_class_root);
            if(v > 2){
                System.out.println(Jasminify.out);
            }
            PrintWriter writer = new PrintWriter("JasminOut.j", "UTF-8");
            writer.println(Jasminify.out);
            writer.close();
        }catch(Exception ex){
            System.out.println("Unhandled exception");
            System.out.println(ex);
            ex.printStackTrace(); 
            //throw new RuntimeException("Jasmin error");
        }
        //*

        System.out.println();
	}
	
}