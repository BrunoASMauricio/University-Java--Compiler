# COMP - Project 1

### Using this compiler

Usage: java Main [-r= < num >] [-o] < input_file.jmm > [-v=< 0|1|2|3 >]

* [NOT IMPLEMENTED] The "–r" option tells the compiler to use only the first <num> local variables of the JVM when assigning the local variables used in each Java-- function to the local JVM variables.
* Without the "–r" option (similar to –r=0), the compiler will use the available JVM local variables to store the local variables used in each Java-- function.
* [NOT IMPLEMENTED]With the "–o" option, the compiler should perform a set of code optimizations.
* The "–v" option, defines the verbose output type.
* * 0: No console output (DEFAULT)
* * 1: Only syntactic output
* * 2: Semantic output and higher
* * 3: Jasmin output and higher

### Project cons

By a lapse of judgement, constant folding was done in a stage prior to constant propagation. This could be changed rather easily (since the syntax tree and the semantic tree share the structure of the arithmetic expressions) but there might not be enough time.

### TODO

[X] Rmove optimizations from inside Symbol class

[X] Improve compiler thrown exceptions (make them more consistent)

[X] Improve general code readability

[X] Remove redundancies/Increase modularity (shove repeated code into separate functions)

[X] Improve variable name significance

[X] Improve documentation

[X] Create packages for better file management

[X] Try to fit the code into a consistent naming convention and style guide


### Semantic errors detected

Working | Custom Test <br> Exists | Description
-|-|-
[V] | [V] | Reserved identifier misuse
[V] | [V] | Invalid variable type
[V] | [V] | Invalid return type
[V] | [V] | No return on non void method
[V] | [V] | Undefined variable name on current scope
[V] | [V] | Undefined/Invalid method signature (name + argument types)
[V] | [V] | Operation operator type conformity (boolean operations (and) require ints and return boolean, logic operations (less than) require ints and return boolean, and arithmetic operations require ints and return int)
[V] | [V] | Control Structures (if and while) require boolean operator
[V] | [V] | Attribution type compatibility
[V] | [V] | Array indexing and accessing type compatibility (all int for j--)
[V] | [V] | Duplicate variable declaration on the current scope
[V] | [V] | Duplicate method signature
[V] | [V] | Method returning array is directly accessed (ex: "M()[0]")
[V] | [V] | Call overloaded (imported or not) methods
[V] | [V] | Static access to non static method and vice-versa
[V] | [V] | Array access to non array variable
[V] | [V] | .length cannot be used on non array
[V] | [V] | Constructor cannot be called without new
[?] | [X] | Call overloaded (imported or not) constructors
[?] | [X] | Constructor with arguments
[V] | [V] | Possible uninitialization of variable due to control flow

### Optimizations

[X] Remove unused variables

[X] Array of size 1 as a variable

[X] Liveliness analysis for register allocation

[X] Redundant attributions are removed 1 (setting the same variable to the same value it already had)

[X] Redundant attributions are removed 2 (changing a variables' value before using the variable)

[X] Most appropriate while structure

[X] Constant propagation by segmented sections (detects where a variable is constant, and replaces it in those segments only)

[X] Register selection priority for loop control or body variables (more accessed)

[V] Constant folding (arithmetic, boolean and logic)

[V] Empty else doesn't generate redundant jumps

[V] Condition related expressions are optimized for direct less than comparisons using either iflt when right hand operand is zero or if_icmpge

[V] Constant pushing instructions are optimized based on the size of the constant



### Logical Structure

The Syntax tree is transformed into a High-Level Intermediate Representation.

The HLIR used is a tree where each node (TreeNode) is a scope. Each node except the file root, is a Symbol in it's parents' table.

Each node in the tree has:
    A table of the Symbols that belong to its scope.

A Symbol is a variable, class or method, and contains the relevant information as well as a signature.

For j--, the main TreeNode root is the file root and defines the global scope. It's children are the imported classes, local class, and all the constructors.

The nodes that represent classes (only 1 for j--), also have a tree of Structures/Expressions.

Structure define the control flow and its extended object, Expression, define the "leaf" node expressions/statements.

## Project Structure

### File Structure

#### Main.java

The class containing the main function.

Reads the arguments and sends them to the relevant classes.

Reads the file, starts the parser, analyzer and handles whatever exceptions pop-up

#### javacc/JMMParser.jjt

The JJTree/Javacc parser.

Implements the grammar and throws parsing exceptions.

#### javacc/SimpleNode.java

A replacement for the auto-generated simple node.

Holds custom information (only 3 new variables).

#### src/Analyzer.java

The class that handles all of the Semantic analysis and generates the structures needed for Jasmin.

#### src/Jasminify.java

Turn the HIR into Jasmin code.

## Project requirements

For this project, you need to [install Gradle](https://gradle.org/install/)

## Project setup

Copy your ``.jjt`` file to the ``javacc`` folder. If you change any of the classes generated by ``jjtree`` or ``javacc``, you also need to copy them to the ``javacc`` folder.

Copy your source files to the ``src`` folder, and your JUnit test files to the ``test`` folder.

## Compile

To compile the program, run ``gradle build``. This will compile your classes to ``classes/main/java`` and copy the JAR file to the root directory. The JAR file will have the same name as the repository folder.

### Run

To run you have two options: Run the ``.class`` files or run the JAR.

### Run ``.class``

To run the ``.class`` files, do the following:

```cmd
java -cp "./build/classes/java/main/" <class_name> <arguments>
```

Where ``<class_name>`` is the name of the class you want to run and ``<arguments>`` are the arguments to be passed to ``main()``.

### Run ``.jar``

To run the JAR, do the following command:

```cmd
java -jar <jar filename> <arguments>
```

Where ``<jar filename>`` is the name of the JAR file that has been copied to the root folder, and ``<arguments>`` are the arguments to be passed to ``main()``.

## Test

To test the program, run ``gradle test``. This will execute the build, and run the JUnit tests in the ``test`` folder. If you want to see output printed during the tests, use the flag ``-i`` (i.e., ``gradle test -i``).
