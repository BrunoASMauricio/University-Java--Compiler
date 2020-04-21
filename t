Initialized native services in: /home/bruno/.gradle/native
The client will now receive all logging from the daemon (pid: 1013334). The daemon log file: /home/bruno/.gradle/daemon/6.3/daemon-1013334.out.log
Starting 69th build in daemon [uptime: 3 hrs 40 mins 45.527 secs, performance: 99%, non-heap usage: 21% of 268.4 MB]
Using 4 worker leases.
Starting Build
Settings evaluated using settings file '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/settings.gradle'.
Projects loaded. Root project using build file '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build.gradle'.
Included projects: [root project 'compiladores']

> Configure project :
Evaluating root project 'compiladores' using build file '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build.gradle'.
All projects evaluated.
Selected primary task 'build' from project :
Tasks to be executed: [task ':compileJjtree', task ':compileJavacc', task ':compileJava', task ':processResources', task ':classes', task ':jar', task ':assemble', task ':compileTestJava', task ':processTestResources', task ':testClasses', task ':test', task ':check', task ':copyJar', task ':build']
Tasks that were excluded: []
:compileJjtree (Thread[Execution worker for ':',5,main]) started.

> Task :compileJjtree UP-TO-DATE
Caching disabled for task ':compileJjtree' because:
  Build cache is disabled
Skipping task ':compileJjtree' as it is up-to-date.
:compileJjtree (Thread[Execution worker for ':',5,main]) completed. Took 0.003 secs.
:compileJavacc (Thread[Execution worker for ':',5,main]) started.

> Task :compileJavacc UP-TO-DATE
Caching disabled for task ':compileJavacc' because:
  Build cache is disabled
Skipping task ':compileJavacc' as it is up-to-date.
:compileJavacc (Thread[Execution worker for ':',5,main]) completed. Took 0.006 secs.
:compileJava (Thread[Execution worker for ':' Thread 2,5,main]) started.

> Task :compileJava
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/main/java', not found
Caching disabled for task ':compileJava' because:
  Build cache is disabled
Task ':compileJava' is not up-to-date because:
  Input property 'stableSources' file /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/Analyzer.java has changed.
  Input property 'stableSources' file /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/Main.java has changed.
Created classpath snapshot for incremental compilation in 0.0 secs.
Class dependency analysis for incremental compilation took 0.003 secs.
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/main/java', not found
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/main/java', not found
Compiling with JDK Java compiler API.
Incremental compilation of 2 classes completed in 0.094 secs.
:compileJava (Thread[Execution worker for ':' Thread 2,5,main]) completed. Took 0.111 secs.
:processResources (Thread[Execution worker for ':' Thread 2,5,main]) started.

> Task :processResources NO-SOURCE
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/main/resources', not found
Skipping task ':processResources' as it has no source files and no previous output files.
:processResources (Thread[Execution worker for ':' Thread 2,5,main]) completed. Took 0.0 secs.
:classes (Thread[Execution worker for ':',5,main]) started.

> Task :classes
Skipping task ':classes' as it has no actions.
:classes (Thread[Execution worker for ':',5,main]) completed. Took 0.0 secs.
:jar (Thread[Execution worker for ':',5,main]) started.

> Task :jar
Caching disabled for task ':jar' because:
  Build cache is disabled
Task ':jar' is not up-to-date because:
  Input property 'rootSpec$1' file /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build/classes/java/main/Analyzer.class has changed.
  Input property 'rootSpec$1' file /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build/classes/java/main/Main.class has changed.
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build/resources/main', not found
:jar (Thread[Execution worker for ':',5,main]) completed. Took 0.036 secs.
:assemble (Thread[Execution worker for ':' Thread 2,5,main]) started.

> Task :assemble
Skipping task ':assemble' as it has no actions.
:assemble (Thread[Execution worker for ':' Thread 2,5,main]) completed. Took 0.0 secs.
:compileTestJava (Thread[Execution worker for ':' Thread 2,5,main]) started.

> Task :compileTestJava UP-TO-DATE
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/test/java', not found
Caching disabled for task ':compileTestJava' because:
  Build cache is disabled
Skipping task ':compileTestJava' as it is up-to-date.
:compileTestJava (Thread[Execution worker for ':' Thread 2,5,main]) completed. Took 0.023 secs.
:processTestResources (Thread[Daemon worker Thread 30,5,main]) started.

> Task :processTestResources UP-TO-DATE
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/test/resources', not found
Could not read file path '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/test/resources'.
Caching disabled for task ':processTestResources' because:
  Build cache is disabled
Skipping task ':processTestResources' as it is up-to-date.
:processTestResources (Thread[Daemon worker Thread 30,5,main]) completed. Took 0.019 secs.
:testClasses (Thread[Daemon worker Thread 30,5,main]) started.

> Task :testClasses UP-TO-DATE
Skipping task ':testClasses' as it has no actions.
:testClasses (Thread[Daemon worker Thread 30,5,main]) completed. Took 0.0 secs.
:test (Thread[Daemon worker Thread 30,5,main]) started.
Gradle Test Executor 61 started executing tests.
Gradle Test Executor 61 finished executing tests.

> Task :test FAILED
Caching disabled for task ':test' because:
  Build cache is disabled
Task ':test' is not up-to-date because:
  Task has failed previously.
Starting process 'Gradle Test Executor 61'. Working directory: /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores Command: /usr/lib/jvm/java-8-openjdk/bin/java -Djava.security.manager=worker.org.gradle.process.internal.worker.child.BootstrapSecurityManager -Dorg.gradle.native=false -Xmx512m -Dfile.encoding=UTF-8 -Duser.country=US -Duser.language=en -Duser.variant -ea -cp /home/bruno/.gradle/caches/6.3/workerMain/gradle-worker.jar worker.org.gradle.process.internal.worker.GradleWorkerMain 'Gradle Test Executor 61'
Successfully started process 'Gradle Test Executor 61'

ParserTest > testLife STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/Life.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/Life.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: read] 
        2 IMPORTMETHOD
        2 RETURN
          3 [Type: int] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: println] 
        2 IMPORTMETHOD
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: println] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ClassDeclaration
        2 ClassHead
          3 [ID: Life] 
        2 VarDeclaration
          3 [Type: int] 
          3 [ID: UNDERPOP_LIM] 
        2 VarDeclaration
          3 [Type: int] 
          3 [ID: OVERPOP_LIM] 
        2 VarDeclaration
          3 [Type: int] 
          3 [ID: REPRODUCE_NUM] 
        2 VarDeclaration
          3 [Type: int] 
          3 [ID: LOOPS_PER_MS] 
        2 VarDeclaration
          3 [Type: int] 
          3 [ID: xMax] 
        2 VarDeclaration
          3 [Type: int] 
          3 [ID: yMax] 
        2 VarDeclaration
          3 [Type: int[]] 
          3 [ID: field] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: Life] 
            4 [ID: l] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: unused] 
          3 Attribution
            4 Target
              5 [ID: l] 
            4 New
              5 [ID: Life] 
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: l] 
              5 SELECTOR
                6 [ID: init] 
                6 SelectorArguments
          3 WhileStructure
            4 WhileHead
              5 [Boolean Constant: true] 
            4 DIRECTEXPRESSION
              5 IdentifierAccess
                6 [ID: l] 
                6 SELECTOR
                  7 [ID: printField] 
                  7 SelectorArguments
            4 DIRECTEXPRESSION
              5 IdentifierAccess
                6 [ID: l] 
                6 SELECTOR
                  7 [ID: update] 
                  7 SelectorArguments
            4 Attribution
              5 Target
                6 [ID: unused] 
              5 IdentifierAccess
                6 [ID: io] 
                6 SELECTOR
                  7 [ID: read] 
                  7 SelectorArguments
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: init] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: lineLenA] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: lineLen] 
          3 Attribution
            4 Target
              5 [ID: lineLenA] 
            4 New
              5 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: UNDERPOP_LIM] 
            4 [Int Constant: 2] 
          3 Attribution
            4 Target
              5 [ID: OVERPOP_LIM] 
            4 [Int Constant: 3] 
          3 Attribution
            4 Target
              5 [ID: REPRODUCE_NUM] 
            4 [Int Constant: 3] 
          3 Attribution
            4 Target
              5 [ID: LOOPS_PER_MS] 
            4 [Int Constant: 225000] 
          3 Attribution
            4 Target
              5 [ID: field] 
            4 THIS
              5 SELECTOR
                6 [ID: field] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: lineLenA] 
          3 Attribution
            4 Target
              5 [ID: lineLen] 
            4 IdentifierAccess
              5 [ID: lineLenA] 
              5 ArrayAccess
                6 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: xMax] 
            4 SUB
              5 IdentifierAccess
                6 [ID: lineLen] 
              5 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: yMax] 
            4 SUB
              5 DIV
                6 IdentifierAccess
                  7 [ID: field] 
                  7 SELECTOR
                    8 LENGTH
                6 IdentifierAccess
                  7 [ID: lineLen] 
              5 [Int Constant: 1] 
          3 RETURN
            4 [Boolean Constant: true] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int[]] 
            4 [ID: field] 
            4 [Type: int[]] 
            4 [ID: lineLen] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: field] 
          3 Attribution
            4 Target
              5 [ID: field] 
            4 New
              5 [Int Constant: 100] 
          3 Attribution
            4 Target
              5 [ID: lineLen] 
              5 ArrayAccess
                6 [Int Constant: 0] 
            4 [Int Constant: 10] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 0] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 1] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 2] 
            4 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 3] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 4] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 5] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 6] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 7] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 8] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 9] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 10] 
            4 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 11] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 12] 
            4 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 13] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 14] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 15] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 16] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 17] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 18] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 19] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 20] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 21] 
            4 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 22] 
            4 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 23] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 24] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 25] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 26] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 27] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 28] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 29] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 30] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 31] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 32] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 33] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 34] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 35] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 36] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 37] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 38] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 39] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 40] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 41] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 42] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 43] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 44] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 45] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 46] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 47] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 48] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 49] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 50] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 51] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 52] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 53] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 54] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 55] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 56] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 57] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 58] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 59] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 60] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 61] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 62] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 63] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 64] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 65] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 66] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 67] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 68] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 69] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 70] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 71] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 72] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 73] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 74] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 75] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 76] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 77] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 78] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 79] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 80] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 81] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 82] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 83] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 84] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 85] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 86] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 87] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 88] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 89] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 90] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 91] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 92] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 93] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 94] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 95] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 96] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 97] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 98] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: field] 
              5 ArrayAccess
                6 [Int Constant: 99] 
            4 [Int Constant: 0] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: field] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: update] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: cur] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: neighN] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: goodPop] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: newField] 
          3 Attribution
            4 Target
              5 [ID: newField] 
            4 New
              5 IdentifierAccess
                6 [ID: field] 
                6 SELECTOR
                  7 LENGTH
          3 Attribution
            4 Target
              5 [ID: i] 
            4 [Int Constant: 0] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: i] 
                6 IdentifierAccess
                  7 [ID: field] 
                  7 SELECTOR
                    8 LENGTH
            4 Attribution
              5 Target
                6 [ID: cur] 
              5 IdentifierAccess
                6 [ID: field] 
                6 ArrayAccess
                  7 IdentifierAccess
                    8 [ID: i] 
            4 Attribution
              5 Target
                6 [ID: neighN] 
              5 THIS
                6 SELECTOR
                  7 [ID: getLiveNeighborN] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: i] 
            4 IfStructure
              5 IfHead
                6 Negate
                  7 LESSTHAN
                    8 IdentifierAccess
                      9 [ID: cur] 
                    8 [Int Constant: 1] 
              5 Attribution
                6 Target
                  7 [ID: goodPop] 
                6 AND
                  7 THIS
                    8 SELECTOR
                      9 [ID: ge] 
                      9 SelectorArguments
                        10 IdentifierAccess
                          11 [ID: neighN] 
                        10 IdentifierAccess
                          11 [ID: UNDERPOP_LIM] 
                  7 THIS
                    8 SELECTOR
                      9 [ID: le] 
                      9 SelectorArguments
                        10 IdentifierAccess
                          11 [ID: neighN] 
                        10 IdentifierAccess
                          11 [ID: OVERPOP_LIM] 
              5 IfStructure
                6 IfHead
                  7 Negate
                    8 IdentifierAccess
                      9 [ID: goodPop] 
                6 Attribution
                  7 Target
                    8 [ID: newField] 
                    8 ArrayAccess
                      9 IdentifierAccess
                        10 [ID: i] 
                  7 [Int Constant: 0] 
                6 ElseStructure
                  7 Attribution
                    8 Target
                      9 [ID: newField] 
                      9 ArrayAccess
                        10 IdentifierAccess
                          11 [ID: i] 
                    8 IdentifierAccess
                      9 [ID: field] 
                      9 ArrayAccess
                        10 IdentifierAccess
                          11 [ID: i] 
              5 ElseStructure
                6 IfStructure
                  7 IfHead
                    8 THIS
                      9 SELECTOR
                        10 [ID: eq] 
                        10 SelectorArguments
                          11 IdentifierAccess
                            12 [ID: neighN] 
                          11 IdentifierAccess
                            12 [ID: REPRODUCE_NUM] 
                  7 Attribution
                    8 Target
                      9 [ID: newField] 
                      9 ArrayAccess
                        10 IdentifierAccess
                          11 [ID: i] 
                    8 [Int Constant: 1] 
                  7 ElseStructure
                    8 Attribution
                      9 Target
                        10 [ID: newField] 
                        10 ArrayAccess
                          11 IdentifierAccess
                            12 [ID: i] 
                      9 IdentifierAccess
                        10 [ID: field] 
                        10 ArrayAccess
                          11 IdentifierAccess
                            12 [ID: i] 
            4 Attribution
              5 Target
                6 [ID: i] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: i] 
                6 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: field] 
            4 IdentifierAccess
              5 [ID: newField] 
          3 RETURN
            4 [Boolean Constant: true] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: printField] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: j] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: j] 
            4 [Int Constant: 0] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: i] 
                6 IdentifierAccess
                  7 [ID: field] 
                  7 SELECTOR
                    8 LENGTH
            4 IfStructure
              5 IfHead
                6 THIS
                  7 SELECTOR
                    8 [ID: gt] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: j] 
                      9 IdentifierAccess
                        10 [ID: xMax] 
              5 DIRECTEXPRESSION
                6 IdentifierAccess
                  7 [ID: io] 
                  7 SELECTOR
                    8 [ID: println] 
                    8 SelectorArguments
              5 Attribution
                6 Target
                  7 [ID: j] 
                6 [Int Constant: 0] 
              5 ElseStructure
            4 DIRECTEXPRESSION
              5 IdentifierAccess
                6 [ID: io] 
                6 SELECTOR
                  7 [ID: print] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: field] 
                      9 ArrayAccess
                        10 IdentifierAccess
                          11 [ID: i] 
            4 Attribution
              5 Target
                6 [ID: i] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: i] 
                6 [Int Constant: 1] 
            4 Attribution
              5 Target
                6 [ID: j] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: j] 
                6 [Int Constant: 1] 
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: io] 
              5 SELECTOR
                6 [ID: println] 
                6 SelectorArguments
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: io] 
              5 SELECTOR
                6 [ID: println] 
                6 SelectorArguments
          3 RETURN
            4 [Boolean Constant: true] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: trIdx] 
            4 [Type: int] 
            4 [ID: x] 
            4 [Type: int] 
            4 [ID: y] 
          3 RETURN
            4 ADD
              5 IdentifierAccess
                6 [ID: x] 
              5 MUL
                6 ADD
                  7 IdentifierAccess
                    8 [ID: xMax] 
                  7 [Int Constant: 1] 
                6 IdentifierAccess
                  7 [ID: y] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int[]] 
            4 [ID: cartIdx] 
            4 [Type: int] 
            4 [ID: absPos] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: x] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: y] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: xLim] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: ret] 
          3 Attribution
            4 Target
              5 [ID: xLim] 
            4 ADD
              5 IdentifierAccess
                6 [ID: xMax] 
              5 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: y] 
            4 DIV
              5 IdentifierAccess
                6 [ID: absPos] 
              5 IdentifierAccess
                6 [ID: xLim] 
          3 Attribution
            4 Target
              5 [ID: x] 
            4 SUB
              5 IdentifierAccess
                6 [ID: absPos] 
              5 MUL
                6 IdentifierAccess
                  7 [ID: y] 
                6 IdentifierAccess
                  7 [ID: xLim] 
          3 Attribution
            4 Target
              5 [ID: ret] 
            4 New
              5 [Int Constant: 2] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 0] 
            4 IdentifierAccess
              5 [ID: x] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 1] 
            4 IdentifierAccess
              5 [ID: y] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: ret] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int[]] 
            4 [ID: getNeighborCoords] 
            4 [Type: int] 
            4 [ID: absPos] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: x] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: y] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: upX] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: upY] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: downX] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: downY] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: cart] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: ret] 
          3 Attribution
            4 Target
              5 [ID: cart] 
            4 THIS
              5 SELECTOR
                6 [ID: cartIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: absPos] 
          3 Attribution
            4 Target
              5 [ID: x] 
            4 IdentifierAccess
              5 [ID: cart] 
              5 ArrayAccess
                6 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: y] 
            4 IdentifierAccess
              5 [ID: cart] 
              5 ArrayAccess
                6 [Int Constant: 1] 
          3 IfStructure
            4 IfHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: x] 
                6 IdentifierAccess
                  7 [ID: xMax] 
            4 Attribution
              5 Target
                6 [ID: downX] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: x] 
                6 [Int Constant: 1] 
            4 IfStructure
              5 IfHead
                6 THIS
                  7 SELECTOR
                    8 [ID: gt] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: x] 
                      9 [Int Constant: 0] 
              5 Attribution
                6 Target
                  7 [ID: upX] 
                6 SUB
                  7 IdentifierAccess
                    8 [ID: x] 
                  7 [Int Constant: 1] 
              5 ElseStructure
                6 Attribution
                  7 Target
                    8 [ID: upX] 
                  7 IdentifierAccess
                    8 [ID: xMax] 
            4 ElseStructure
              5 Attribution
                6 Target
                  7 [ID: downX] 
                6 [Int Constant: 0] 
              5 Attribution
                6 Target
                  7 [ID: upX] 
                6 SUB
                  7 IdentifierAccess
                    8 [ID: x] 
                  7 [Int Constant: 1] 
          3 IfStructure
            4 IfHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: y] 
                6 IdentifierAccess
                  7 [ID: yMax] 
            4 Attribution
              5 Target
                6 [ID: downY] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: y] 
                6 [Int Constant: 1] 
            4 IfStructure
              5 IfHead
                6 THIS
                  7 SELECTOR
                    8 [ID: gt] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: y] 
                      9 [Int Constant: 0] 
              5 Attribution
                6 Target
                  7 [ID: upY] 
                6 SUB
                  7 IdentifierAccess
                    8 [ID: y] 
                  7 [Int Constant: 1] 
              5 ElseStructure
                6 Attribution
                  7 Target
                    8 [ID: upY] 
                  7 IdentifierAccess
                    8 [ID: yMax] 
            4 ElseStructure
              5 Attribution
                6 Target
                  7 [ID: downY] 
                6 [Int Constant: 0] 
              5 Attribution
                6 Target
                  7 [ID: upY] 
                6 SUB
                  7 IdentifierAccess
                    8 [ID: y] 
                  7 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: ret] 
            4 New
              5 [Int Constant: 8] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 0] 
            4 THIS
              5 SELECTOR
                6 [ID: trIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: x] 
                  7 IdentifierAccess
                    8 [ID: upY] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 1] 
            4 THIS
              5 SELECTOR
                6 [ID: trIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: upX] 
                  7 IdentifierAccess
                    8 [ID: upY] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 2] 
            4 THIS
              5 SELECTOR
                6 [ID: trIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: upX] 
                  7 IdentifierAccess
                    8 [ID: y] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 3] 
            4 THIS
              5 SELECTOR
                6 [ID: trIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: upX] 
                  7 IdentifierAccess
                    8 [ID: downY] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 4] 
            4 THIS
              5 SELECTOR
                6 [ID: trIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: x] 
                  7 IdentifierAccess
                    8 [ID: downY] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 5] 
            4 THIS
              5 SELECTOR
                6 [ID: trIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: downX] 
                  7 IdentifierAccess
                    8 [ID: downY] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 6] 
            4 THIS
              5 SELECTOR
                6 [ID: trIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: downX] 
                  7 IdentifierAccess
                    8 [ID: y] 
          3 Attribution
            4 Target
              5 [ID: ret] 
              5 ArrayAccess
                6 [Int Constant: 7] 
            4 THIS
              5 SELECTOR
                6 [ID: trIdx] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: downX] 
                  7 IdentifierAccess
                    8 [ID: upY] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: ret] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: getLiveNeighborN] 
            4 [Type: int] 
            4 [ID: absPos] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: neigh] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: ret] 
          3 Attribution
            4 Target
              5 [ID: ret] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: neigh] 
            4 THIS
              5 SELECTOR
                6 [ID: getNeighborCoords] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: absPos] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 [Int Constant: 0] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: i] 
                6 IdentifierAccess
                  7 [ID: neigh] 
                  7 SELECTOR
                    8 LENGTH
            4 IfStructure
              5 IfHead
                6 THIS
                  7 SELECTOR
                    8 [ID: ne] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: field] 
                        10 ArrayAccess
                          11 IdentifierAccess
                            12 [ID: neigh] 
                            12 ArrayAccess
                              13 IdentifierAccess
                                14 [ID: i] 
                      9 [Int Constant: 0] 
              5 Attribution
                6 Target
                  7 [ID: ret] 
                6 ADD
                  7 IdentifierAccess
                    8 [ID: ret] 
                  7 [Int Constant: 1] 
              5 ElseStructure
            4 Attribution
              5 Target
                6 [ID: i] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: i] 
                6 [Int Constant: 1] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: ret] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: busyWait] 
            4 [Type: int] 
            4 [ID: ms] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: n] 
          3 Attribution
            4 Target
              5 [ID: n] 
            4 MUL
              5 IdentifierAccess
                6 [ID: ms] 
              5 IdentifierAccess
                6 [ID: LOOPS_PER_MS] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 [Int Constant: 0] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: i] 
                6 IdentifierAccess
                  7 [ID: n] 
            4 Attribution
              5 Target
                6 [ID: i] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: i] 
                6 [Int Constant: 1] 
          3 RETURN
            4 [Boolean Constant: true] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: eq] 
            4 [Type: int] 
            4 [ID: a] 
            4 [Type: int] 
            4 [ID: b] 
          3 RETURN
            4 Negate
              5 AND
                6 THIS
                  7 SELECTOR
                    8 [ID: lt] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: a] 
                      9 IdentifierAccess
                        10 [ID: b] 
                6 Negate
                  7 THIS
                    8 SELECTOR
                      9 [ID: lt] 
                      9 SelectorArguments
                        10 IdentifierAccess
                          11 [ID: b] 
                        10 IdentifierAccess
                          11 [ID: a] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: ne] 
            4 [Type: int] 
            4 [ID: a] 
            4 [Type: int] 
            4 [ID: b] 
          3 RETURN
            4 Negate
              5 THIS
                6 SELECTOR
                  7 [ID: eq] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: a] 
                    8 IdentifierAccess
                      9 [ID: b] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: lt] 
            4 [Type: int] 
            4 [ID: a] 
            4 [Type: int] 
            4 [ID: b] 
          3 RETURN
            4 LESSTHAN
              5 IdentifierAccess
                6 [ID: a] 
              5 IdentifierAccess
                6 [ID: b] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: le] 
            4 [Type: int] 
            4 [ID: a] 
            4 [Type: int] 
            4 [ID: b] 
          3 RETURN
            4 Negate
              5 Negate
                6 AND
                  7 THIS
                    8 SELECTOR
                      9 [ID: lt] 
                      9 SelectorArguments
                        10 IdentifierAccess
                          11 [ID: a] 
                        10 IdentifierAccess
                          11 [ID: b] 
                  7 Negate
                    8 THIS
                      9 SELECTOR
                        10 [ID: eq] 
                        10 SelectorArguments
                          11 IdentifierAccess
                            12 [ID: a] 
                          11 IdentifierAccess
                            12 [ID: b] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: gt] 
            4 [Type: int] 
            4 [ID: a] 
            4 [Type: int] 
            4 [ID: b] 
          3 RETURN
            4 Negate
              5 THIS
                6 SELECTOR
                  7 [ID: le] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: a] 
                    8 IdentifierAccess
                      9 [ID: b] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: ge] 
            4 [Type: int] 
            4 [ID: a] 
            4 [Type: int] 
            4 [ID: b] 
          3 RETURN
            4 Negate
              5 Negate
                6 AND
                  7 THIS
                    8 SELECTOR
                      9 [ID: gt] 
                      9 SelectorArguments
                        10 IdentifierAccess
                          11 [ID: a] 
                        10 IdentifierAccess
                          11 [ID: b] 
                  7 Negate
                    8 THIS
                      9 SELECTOR
                        10 [ID: eq] 
                        10 SelectorArguments
                          11 IdentifierAccess
                            12 [ID: a] 
                          11 IdentifierAccess
                            12 [ID: b] 
    Analyzer starting
    Method signature: read()

    "import""static"<ID>"."<ID>"("")""void"
    Method signature: println()

    "import""static"<ID>"."<ID>"(""int"")""void"
    Method signature: println(int)
    Method signature: Life()
    Method signature: main(String[])
    SET SYMBOL main(String[]) TreeNode@4a072fe5
    Method signature: init()
    SET SYMBOL init() TreeNode@710c88c2
    Method signature: field(int[])
    SET SYMBOL field(int[]) TreeNode@10dee49f
    Method signature: update()
    SET SYMBOL update() TreeNode@61e9623d
    Method signature: printField()
    SET SYMBOL printField() TreeNode@126201e2
    Method signature: trIdx(int,int)
    SET SYMBOL trIdx(int,int) TreeNode@7bdd1f4
    Method signature: cartIdx(int)
    SET SYMBOL cartIdx(int) TreeNode@60202780
    Method signature: getNeighborCoords(int)
    SET SYMBOL getNeighborCoords(int) TreeNode@4a724933
    Method signature: getLiveNeighborN(int)
    SET SYMBOL getLiveNeighborN(int) TreeNode@481d3c8e
    Method signature: busyWait(int)
    SET SYMBOL busyWait(int) TreeNode@21467608
    Method signature: eq(int,int)
    SET SYMBOL eq(int,int) TreeNode@40bb4987
    Method signature: ne(int,int)
    SET SYMBOL ne(int,int) TreeNode@1858bb72
    Method signature: lt(int,int)
    SET SYMBOL lt(int,int) TreeNode@39000dbb
    Method signature: le(int,int)
    SET SYMBOL le(int,int) TreeNode@2be4daa5
    Method signature: gt(int,int)
    SET SYMBOL gt(int,int) TreeNode@3109492f
    Method signature: main(String[])
    RETRIEVED SYMBOL main(String[]) TreeNode@4a072fe5
    				CLASS Life()
    false

    On line 21
    <ID>"."<ID>"("FINAL RETURN boolean

    On line 24
    <ID>"."<ID>"("FINAL RETURN boolean

    On line 25
    <ID>"."<ID>"("FINAL RETURN boolean

    On line 26
    <ID>"."<ID>"("FINAL RETURN int
    Method signature: init()
    RETRIEVED SYMBOL init() TreeNode@710c88c2

    On line 46
    <ID>"["<INTEGER>Unhandled exception
    java.lang.ClassCastException: Symbol cannot be cast to TreeNode

ParserTest > testLife STANDARD_ERROR
    java.lang.ClassCastException: Symbol cannot be cast to TreeNode
    	at Analyzer.getExpression(Analyzer.java:378)
    	at Analyzer.getAttribution(Analyzer.java:465)
    	at Analyzer.getStatement(Analyzer.java:554)
    	at Analyzer.getMethod(Analyzer.java:656)
    	at Analyzer.getClass(Analyzer.java:724)
    	at Analyzer.analyze(Analyzer.java:874)
    	at Main.main(Main.java:57)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testLife(ParserTest.java:62)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:47)
    	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:12)
    	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:44)
    	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:17)
    	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:271)
    	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:70)
    	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:50)
    	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)
    	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)
    	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)
    	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)
    	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)
    	at org.junit.runners.ParentRunner.run(ParentRunner.java:309)
    	at org.gradle.api.internal.tasks.testing.junit.JUnitTestClassExecutor.runTestClass(JUnitTestClassExecutor.java:110)
    	at org.gradle.api.internal.tasks.testing.junit.JUnitTestClassExecutor.execute(JUnitTestClassExecutor.java:58)
    	at org.gradle.api.internal.tasks.testing.junit.JUnitTestClassExecutor.execute(JUnitTestClassExecutor.java:38)
    	at org.gradle.api.internal.tasks.testing.junit.AbstractJUnitTestClassProcessor.processTestClass(AbstractJUnitTestClassProcessor.java:62)
    	at org.gradle.api.internal.tasks.testing.SuiteTestClassProcessor.processTestClass(SuiteTestClassProcessor.java:51)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at org.gradle.internal.dispatch.ReflectionDispatch.dispatch(ReflectionDispatch.java:36)
    	at org.gradle.internal.dispatch.ReflectionDispatch.dispatch(ReflectionDispatch.java:24)
    	at org.gradle.internal.dispatch.ContextClassLoaderDispatch.dispatch(ContextClassLoaderDispatch.java:33)
    	at org.gradle.internal.dispatch.ProxyDispatchAdapter$DispatchingInvocationHandler.invoke(ProxyDispatchAdapter.java:94)
    	at com.sun.proxy.$Proxy2.processTestClass(Unknown Source)
    	at org.gradle.api.internal.tasks.testing.worker.TestWorker.processTestClass(TestWorker.java:118)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at org.gradle.internal.dispatch.ReflectionDispatch.dispatch(ReflectionDispatch.java:36)
    	at org.gradle.internal.dispatch.ReflectionDispatch.dispatch(ReflectionDispatch.java:24)
    	at org.gradle.internal.remote.internal.hub.MessageHubBackedObjectConnection$DispatchWrapper.dispatch(MessageHubBackedObjectConnection.java:182)
    	at org.gradle.internal.remote.internal.hub.MessageHubBackedObjectConnection$DispatchWrapper.dispatch(MessageHubBackedObjectConnection.java:164)
    	at org.gradle.internal.remote.internal.hub.MessageHub$Handler.run(MessageHub.java:412)
    	at org.gradle.internal.concurrent.ExecutorPolicy$CatchAndRecordFailures.onExecute(ExecutorPolicy.java:64)
    	at org.gradle.internal.concurrent.ManagedExecutorImpl$1.run(ManagedExecutorImpl.java:48)
    	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
    	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
    	at org.gradle.internal.concurrent.ThreadFactoryImpl$ManagedThreadRunnable.run(ThreadFactoryImpl.java:56)
    	at java.lang.Thread.run(Thread.java:748)

ParserTest > testLife STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testLife STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testLife(ParserTest.java:62)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:47)
    	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:12)
    	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:44)
    	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:17)
    	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:271)
    	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:70)
    	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:50)
    	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:238)
    	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:63)
    	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:236)
    	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:53)
    	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:229)
    	at org.junit.runners.ParentRunner.run(ParentRunner.java:309)
    	at org.gradle.api.internal.tasks.testing.junit.JUnitTestClassExecutor.runTestClass(JUnitTestClassExecutor.java:110)
    	at org.gradle.api.internal.tasks.testing.junit.JUnitTestClassExecutor.execute(JUnitTestClassExecutor.java:58)
    	at org.gradle.api.internal.tasks.testing.junit.JUnitTestClassExecutor.execute(JUnitTestClassExecutor.java:38)
    	at org.gradle.api.internal.tasks.testing.junit.AbstractJUnitTestClassProcessor.processTestClass(AbstractJUnitTestClassProcessor.java:62)
    	at org.gradle.api.internal.tasks.testing.SuiteTestClassProcessor.processTestClass(SuiteTestClassProcessor.java:51)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at org.gradle.internal.dispatch.ReflectionDispatch.dispatch(ReflectionDispatch.java:36)
    	at org.gradle.internal.dispatch.ReflectionDispatch.dispatch(ReflectionDispatch.java:24)
    	at org.gradle.internal.dispatch.ContextClassLoaderDispatch.dispatch(ContextClassLoaderDispatch.java:33)
    	at org.gradle.internal.dispatch.ProxyDispatchAdapter$DispatchingInvocationHandler.invoke(ProxyDispatchAdapter.java:94)
    	at com.sun.proxy.$Proxy2.processTestClass(Unknown Source)
    	at org.gradle.api.internal.tasks.testing.worker.TestWorker.processTestClass(TestWorker.java:118)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at org.gradle.internal.dispatch.ReflectionDispatch.dispatch(ReflectionDispatch.java:36)
    	at org.gradle.internal.dispatch.ReflectionDispatch.dispatch(ReflectionDispatch.java:24)
    	at org.gradle.internal.remote.internal.hub.MessageHubBackedObjectConnection$DispatchWrapper.dispatch(MessageHubBackedObjectConnection.java:182)
    	at org.gradle.internal.remote.internal.hub.MessageHubBackedObjectConnection$DispatchWrapper.dispatch(MessageHubBackedObjectConnection.java:164)
    	at org.gradle.internal.remote.internal.hub.MessageHub$Handler.run(MessageHub.java:412)
    	at org.gradle.internal.concurrent.ExecutorPolicy$CatchAndRecordFailures.onExecute(ExecutorPolicy.java:64)
    	at org.gradle.internal.concurrent.ManagedExecutorImpl$1.run(ManagedExecutorImpl.java:48)
    	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
    	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
    	at org.gradle.internal.concurrent.ThreadFactoryImpl$ManagedThreadRunnable.run(ThreadFactoryImpl.java:56)
    	at java.lang.Thread.run(Thread.java:748)
    Caused by: java.lang.RuntimeException: Semantic error
    	at Main.main(Main.java:74)
    	... 53 more

ParserTest > testLife STANDARD_OUT
    Expected parser to complete successfully

ParserTest > testLife FAILED
    java.lang.AssertionError
        at org.junit.Assert.fail(Assert.java:86)
        at org.junit.Assert.fail(Assert.java:95)
        at ParserTest.test(ParserTest.java:52)
        at ParserTest.testLife(ParserTest.java:62)
Finished generating test XML results (0.008 secs) into: /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build/test-results/test
Generating HTML test report...
Finished generating test html results (0.01 secs) into: /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build/reports/tests/test
:test (Thread[Daemon worker Thread 30,5,main]) completed. Took 1.195 secs.
7 actionable tasks: 3 executed, 4 up-to-date
