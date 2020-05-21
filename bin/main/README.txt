**PROJECT TITLE: JAC (Just A Compiler)
**GROUP: 2I

NAME1: Bruno Alexandre de Salabert Maurício, NR1: up201604107, GRADE1: ?, CONTRIBUTION1: 100%


GLOBAL Grade of the project: <0 to 20>

** SUMMARY: (Describe what your tool does and its main features.)
The compiler implements Java Minus Minus grammar.
?
?

** EXECUTE: (indicate how to run your tool)

There are techincally two tools in this project.
The actual compiler and the run.sh

Run.sh compiles gradle, runs the compiler on a file, then runs jasmin on the output and runs Java on Jasmins' output.

Usage: ./run.sh FILE_PATH BASH_VERBOSITY COMPILER_VERBOSITY INTERACTIVE

FILE_PATH: the file to compile
BASH_VERBOSITY: this scripts verbosity
    0: No output
    1: Only gradle
    2: Jasmin + above
    3: Java + above
COMPILER_VERBOSITY: the verbosity to send to the compiler
    0: No output
    1: Only syntactic output
    2: Semantic output and higher
    3: jasmin output and higher
INTERACTIVE: == 1 to allow direct Java program interaction (no java output logging)


To run the actual compiler:

Usage: java Main [-r=<num>] [-o] <input_file.jmm> [-v=<0|1|2|3>]

The "–r" option tells the compiler to use only the first <num> local variables of the JVM when assigning the local variables used in each Java-- function to the local JVM variables.
Without the "–r" option (similar to –r=0), the compiler will use the available JVM local variables to store the local variables used in each Java-- function.
With the "–o" option, the compiler should perform a set of code optimizations.
The "–v" option, defines the verbose output type.
    0: No console output (DEFAULT)
    1: Only syntactic output
    2: Semantic output and higher
    3: jasmin output and higher



**DEALING WITH SYNTACTIC ERRORS: (Describe how the syntactic error recovery of your tool does work. Does it exit after the first error?)

**SEMANTIC ANALYSIS: (Refer the semantic rules implemented by your tool.)

**INTERMEDIATE REPRESENTATIONS (IRs): (for example, when applicable, briefly describe the HLIR (high-level IR) and the LLIR (low-level IR) used, if your tool includes an LLIR with structure different from the HLIR)

**CODE GENERATION: (describe how the code generation of your tool works and identify the possible problems your tool has regarding code generation.)

**OVERVIEW: (refer the approach used in your tool, the main algorithms, the third-party tools and/or packages, etc.)

**TASK DISTRIBUTION: (Identify the set of tasks done by each member of the project. You can divide this by checkpoint it if helps)

**PROS: (Identify the most positive aspects of your tool)

**CONS: (Identify the most negative aspects of your tool)

