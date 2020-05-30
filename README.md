# Compiler Project 2020

### Using this compiler

Usage: java Main [-r= < num >] [-o] < input_file.jmm > [-v=< 0|1|2|3 >]

* The "–r" option tells the compiler to use only the first <num> local variables of the JVM when assigning the local variables used in each Java-- function to the local JVM variables.
* Without the "–r" option (similar to –r=0), the compiler will use the available JVM local variables to store the local variables used in each Java-- function.
* –o: Performs a set of code optimizations
* –v: Compiler verbosity
* * 0: No console output (DEFAULT)
* * 1: Only syntactic output
* * 2: Semantic output and higher
* * 3: Jasmin output and higher

### Using the custom run.sh

Script to run gradle, the compiler on a file, jasmin on the result and then launch the resulting .class

Also logs the resulting outputs into files in the run_tmp directory, for easier debugging and output analysis.

Usage: ./run.sh FILE_PATH BASH_VERBOSITY COMPILER_VERBOSITY INTERACTIVE RVALUE OVALUE

* FILE_PATH: the file to compile
* BASH_VERBOSITY: this scripts verbosity
* * 0: No output
* * 1: Only gradle
* * 2: Jasmin + above
* * 3: Java + above
* COMPILER_VERBOSITY: the verbosity to send to the compiler
* * 0: No output
* * 1: Only syntactic output
* * 2: Semantic output and higher
* * 3: jasmin output and higher
* INTERACTIVE: 1 to allow direct Java program interaction (no java output logging)
* RVALUE: -r value to pass to the compiler
* OVALUE: -o value to pass to the compiler (!0 to activate the flag)

### Project cons

1. The lookahead in the syntatic section is globally of 1, but in a few local situations of 2

2. Missing optimizations for conditions that can be analysed at compile time

3. Only detects 1 uninitialized variable per method at a time.


### Project pros

1. This project is extremely modular, the sections (syntatic, semantic, jasmin and optimizations) are completely independent, and only rely in the IRs that are required as input/output.

2. Stack calculation is precise.

3. Exceptions for all the required situations.

4. With the -r flag, the liveliness analysis usesthe least ammount of registers, and warns the user if the required maximum is possible

5. Improved "segmented" Constant propagation and constant folding (more in formation in the section "Optimization details") with the flag -o.

6. Can detect variable not-initialized issues inside control structures (ifs/whiles), can be tested with "NotInitialized.jmm". Activated with the -o flag.

### TODO

[X] Remove optimization variables from inside Symbol class

[X] Improve compiler thrown exceptions (make them more consistent)

[V] Improve general code readability

[X] Remove redundancies/Increase modularity (shove repeated code into separate functions)

[X] Improve variable name significance

[X] Improve documentation

[X/V] Create packages for better file management (VS code and gradle aren't using the same paths and it becomes hard to develop the code further)

[X] Try to fit the code into a consistent naming convention and style guide

[V] Improve README.md

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

[V] Liveliness analysis for register allocation

[V] Constant propagation by segmented sections (detects where a variable is constant, and replaces it in those segments only)

[V] Constant folding (arithmetic, boolean and logic)

[V] Empty else doesn't generate redundant jumps

[V] Condition related expressions are optimized for direct less than comparisons using either iflt when right hand operand is zero or if_icmpge for simple less than

[V] Constant pushing instructions are optimized based on the size of the constant

[X] Remove unused variables

[X] Array of size 1 as a variable

[X] Redundant attributions are removed 1 (setting the same variable to the same value it already had)

[X] Redundant attributions are removed 2 (changing a variables' value before using the variable)

[X] Most appropriate while structure

[X] Register selection priority for loop control or body variables (more accessed)


### Optimization details

#### Constant propagation

The way constant propagation is done, is by looking at the possible branches (whiles and ifs), and assert wether or not a variable is constant at a certain part in the code. This means that a variable that stops being constant at a certain part of the code, and later resumes being a constant, is treated as such. Follows a simple example:

int a;
int b;
a = afunction();
b = a;
a = 2;
b = a;

In the above example, only for the second attribution will a be swapped with "2".

For a more complex and detailed example of how the created algorithm behaves, look at the test "ConstantPropagation.jmm" and the implementation at Optimizations/SemanticToJasminOptimizations.java

#### Constant folding

Constant folding is relatively straight forward and is executed for all the supported logic, arithmetic and boolean operations (+, -, *, /, <, &&).

The example test is "ConstantFolding.jmm" and it is implemented in Optimizations/SemanticToJasminOptimizations.java

Runs after constant propagation.

#### Liveliness

To perform the liveliness analysis, the IR CodeTree was used (further detail on the IR is presented bellow).

The analysis is made as depicted in the given slides, and is working.

On the resulting, final jasmin code, a tag saying "changed X Y" can be seen where there was a choice to swap the X register with the Y register

Also outputs to the console a message that tells us, per method, the reduction in locals.


### Intermediate Representations

#### ScopeNode

An IR that represents scopes as a tree structure. Created during the semantic analysis.

The leaves are the methods, and are nested inside the class scope, that itself is nested in the file/root scope.

If there could be inner scopes such as variable declarations inside {}, the leaves would be those nested scopes.

The file scope also includes the constructors and imports (as classes) with their respective constructors.

#### CodeTree

This IR is generated from Jasmin code, and is a graph structure, where the nodes are either "loads", "stores", "ifs", "gotos" or "labels", and have the necessary information (such as the current chosen index, etc), "ponting" to the next possible instructions ("ifs" point to 2 nodes).

So as to allow for a better manipulation of the stream-like code, hash-based hooks are inserted into the jasmin code as comments and then stored in the nodes of this IR, to allow for unequivocal line manipulation (p.ex. store_1 can be present in two different methods, but we need to treat them separately)

### Logical Structure

The Syntax tree is transformed into a High-Level Intermediate Representation.

The HLIR used is a tree where each node (ScopeNode) is a scope. Each node except the file root, is a Symbol in it's parents' table.

Each node in the tree has:
    A table of the Symbols that belong to its scope.

A Symbol is a variable, class or method, and contains the relevant information as well as a signature.

For j--, the main ScopeNode root is the file root and defines the global scope. It's children are the imported classes, local class, and all the constructors.

The nodes that represent classes (only 1 for j--), also have a tree of Structures/Expressions.

Structure define the control flow and its extended object, Expression, define the "leaf" node expressions/statements.




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
