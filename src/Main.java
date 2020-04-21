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
	
	public static void main(String[] args) throws Exception{
        if(args.length < 1){
            Usage();
        }
        
        String input_file = null;
        InputStream file_stream = null;
        int r = 0;
        boolean o = false;
        SimpleNode root = null;
        
        //Read arguments
        for(int i = 0; i < args.length; i++){
            if(args[i].substring(0,3).equals("-r=")){
                r = Integer.parseInt(args[i].substring(4));
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
        try{
            root = JMMParser.parse(file_stream);
            JMMParser.eval(root, 0);
        }catch(Exception ex){
            ex.printStackTrace();
            throw new RuntimeException("Syntatical error");
        }

        try{
            Analyzer.analyze(root, input_file);
        }catch(DuplicateException ex){
            System.out.println("\t\tERROR Duplicate detected");
            System.out.println(ex);
            throw new RuntimeException("Semantic error");
        }catch(UndeclaredException ex){
            System.out.println("\t\tERROR Undeclared entity");
            System.out.println(ex);
            throw new RuntimeException("Semantic error");
        }catch(IncompatibleException ex){
            System.out.println("\t\tERROR incompatibility detected");
            System.out.println(ex);
            throw new RuntimeException("Semantic error");
        }catch(Exception ex){
            System.out.println("Unhandled exception");
            System.out.println(ex);
            ex.printStackTrace(); 
            throw new RuntimeException("Semantic error");
        }

        System.out.println();
	}
	
}