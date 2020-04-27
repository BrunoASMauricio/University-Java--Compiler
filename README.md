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

### Semantic errors detected

I haven't created any custom testing file yet, only temporarily altered other tests to check for issues.

Working | Custom Test <br> Exists | Description
-|-|-
[V] | [X] | Invalid variable type
[V] | [X] | Invalid return type
[V] | [X] | No return on non void method
[V] | [X] | Undefined variable name on current scope
[V] | [X] | Undefined/Invalid method signature (name + argument types)
[V] | [X] | Undefined class (for static accesses)
[V] | [X] | Static access to non static method and vice-versa
[V] | [X] | Operation operator type conformity (boolean operations (and) require ints and return boolean, logic operations (less than) require ints and return boolean, and arithmetic operations require ints and return int)
[V] | [X] | Control Structures (if and while) require boolean operator
[V] | [X] | Attribution type compatibility
[V] | [X] | Array indexing and accessing type compatibility (all int for j--)
[V] | [X] | Duplicate variable declaration on the current scope
[V] | [X] | Duplicate method signature
[V] | [X] | Array access to non array variable
[X] | [X] | Possible uninitialization of variable due to control flow
[X] | [X] | Constructor cannot be called without new
[V] | [X] | Class cannot be used as a variable name
[V] | [X] | Main used inside a method
[?] | [X] | Method returning array is directly accessed (ex: "M()[0]")
[?] | [X] | "This" keyword cannot use method variables
[?] | [X] | Call overloaded constructors
[?] | [X] | Call overloaded imported constructors
[X] | [X] | String concatenation [EXTRA]
[X] | [X] | Non existent extends
[X] | [X] | Reserved identifier misuse


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