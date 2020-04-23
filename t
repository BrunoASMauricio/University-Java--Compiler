Initialized native services in: /home/bruno/.gradle/native
The client will now receive all logging from the daemon (pid: 1180630). The daemon log file: /home/bruno/.gradle/daemon/6.3/daemon-1180630.out.log
Starting 88th build in daemon [uptime: 3 hrs 13 mins 1.066 secs, performance: 100%, non-heap usage: 26% of 268.4 MB]
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
:compileJjtree (Thread[Execution worker for ':',5,main]) completed. Took 0.006 secs.
:compileJavacc (Thread[Execution worker for ':',5,main]) started.

> Task :compileJavacc UP-TO-DATE
Caching disabled for task ':compileJavacc' because:
  Build cache is disabled
Skipping task ':compileJavacc' as it is up-to-date.
:compileJavacc (Thread[Execution worker for ':',5,main]) completed. Took 0.001 secs.
:compileJava (Thread[Execution worker for ':',5,main]) started.

> Task :compileJava
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/main/java', not found
Caching disabled for task ':compileJava' because:
  Build cache is disabled
Task ':compileJava' is not up-to-date because:
  Input property 'stableSources' file /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/Analyzer.java has changed.
Created classpath snapshot for incremental compilation in 0.0 secs.
Class dependency analysis for incremental compilation took 0.01 secs.
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/main/java', not found
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/main/java', not found
Compiling with JDK Java compiler API.
Note: /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/Analyzer.java uses unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
Incremental compilation of 3 classes completed in 0.188 secs.
:compileJava (Thread[Execution worker for ':',5,main]) completed. Took 0.212 secs.
:processResources (Thread[Execution worker for ':',5,main]) started.

> Task :processResources NO-SOURCE
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/main/resources', not found
Skipping task ':processResources' as it has no source files and no previous output files.
:processResources (Thread[Execution worker for ':',5,main]) completed. Took 0.0 secs.
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
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build/resources/main', not found
:jar (Thread[Execution worker for ':',5,main]) completed. Took 0.024 secs.
:assemble (Thread[Execution worker for ':',5,main]) started.

> Task :assemble
Skipping task ':assemble' as it has no actions.
:assemble (Thread[Execution worker for ':',5,main]) completed. Took 0.0 secs.
:compileTestJava (Thread[Execution worker for ':',5,main]) started.

> Task :compileTestJava UP-TO-DATE
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/test/java', not found
Caching disabled for task ':compileTestJava' because:
  Build cache is disabled
Skipping task ':compileTestJava' as it is up-to-date.
:compileTestJava (Thread[Execution worker for ':',5,main]) completed. Took 0.031 secs.
:processTestResources (Thread[Execution worker for ':',5,main]) started.

> Task :processTestResources UP-TO-DATE
file or directory '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/test/resources', not found
Could not read file path '/home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/src/test/resources'.
Caching disabled for task ':processTestResources' because:
  Build cache is disabled
Skipping task ':processTestResources' as it is up-to-date.
:processTestResources (Thread[Execution worker for ':',5,main]) completed. Took 0.009 secs.
:testClasses (Thread[Execution worker for ':',5,main]) started.

> Task :testClasses UP-TO-DATE
Skipping task ':testClasses' as it has no actions.
:testClasses (Thread[Execution worker for ':',5,main]) completed. Took 0.0 secs.
:test (Thread[Execution worker for ':',5,main]) started.
Gradle Test Executor 76 started executing tests.

> Task :test
Caching disabled for task ':test' because:
  Build cache is disabled
Task ':test' is not up-to-date because:
  Task has failed previously.
Starting process 'Gradle Test Executor 76'. Working directory: /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores Command: /usr/lib/jvm/java-8-openjdk/bin/java -Djava.security.manager=worker.org.gradle.process.internal.worker.child.BootstrapSecurityManager -Dorg.gradle.native=false -Xmx512m -Dfile.encoding=UTF-8 -Duser.country=US -Duser.language=en -Duser.variant -ea -cp /home/bruno/.gradle/caches/6.3/workerMain/gradle-worker.jar worker.org.gradle.process.internal.worker.GradleWorkerMain 'Gradle Test Executor 76'
Successfully started process 'Gradle Test Executor 76'

ParserTest > testvar_undef STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_undef.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_undef.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 IdentifierAccess
              5 [ID: j] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_undef.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Structures (0): 




    		ERROR Undeclared entity
    UndeclaredException: Undefined j
    On line 8
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testvar_undef STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testvar_undef(ParserTest.java:147)
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
    	at Main.main(Main.java:65)
    	... 53 more

ParserTest > testarr_index_not_int STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/arr_index_not_int.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/arr_index_not_int.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: s] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: a] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: c] 
          3 Attribution
            4 Target
              5 [ID: a] 
            4 New
              5 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 IdentifierAccess
              5 [ID: a] 
              5 ArrayAccess
                6 [Boolean Constant: true] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/arr_index_not_int.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name s
    	Type 4
    	Signature s

    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name c
    	Type 4
    	Signature c

    Structures (1): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol a return type int[]
        Structure Type: Expression: INT ARRAY return type int[]




    		ERROR incompatibility detected
    IncompatibleException: Array accesses must be of type int and not boolean
    On line 11
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testarr_index_not_int STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testarr_index_not_int(ParserTest.java:107)
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
    	at Main.main(Main.java:69)
    	... 53 more

ParserTest > testNestedLoop STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/NestedLoop.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/NestedLoop.jmm
    Parser starting
    COULD NOT PARSE WHILE
    UNEXPECTED Parsing Exception
    PARSING ERROR
    Unexpected symbol encountered: } on line 8, column 2
    Was expecting one of the following symbols:
    [ <EOF>  ]


ParserTest > testNestedLoop STANDARD_ERROR
    java.lang.Exception: Parser failure
    	at JMMParser.parse(JMMParser.java:25)
    	at Main.main(Main.java:49)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testNestedLoop(ParserTest.java:187)
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

ParserTest > testNestedLoop STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testNestedLoop STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testNestedLoop(ParserTest.java:187)
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
    Caused by: java.lang.RuntimeException: Syntatical error
    	at Main.main(Main.java:53)
    	... 53 more

ParserTest > testMonteCarloPi STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/MonteCarloPi.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/MonteCarloPi.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: MathUtils] 
        2 [ID: random] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 [Type: int] 
        2 RETURN
          3 [Type: int] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: ioPlus] 
        2 [ID: requestNumber] 
        2 IMPORTMETHOD
        2 RETURN
          3 [Type: int] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: ioPlus] 
        2 [ID: printResult] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ClassDeclaration
        2 ClassHead
          3 [ID: MonteCarloPi] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: performSingleEstimate] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: rand1] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: rand2] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: in_circle] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: squareDist] 
          3 Attribution
            4 Target
              5 [ID: rand1] 
            4 IdentifierAccess
              5 [ID: MathUtils] 
              5 SELECTOR
                6 [ID: random] 
                6 SelectorArguments
                  7 SUB
                    8 [Int Constant: 0] 
                    8 [Int Constant: 100] 
                  7 [Int Constant: 100] 
          3 Attribution
            4 Target
              5 [ID: rand2] 
            4 IdentifierAccess
              5 [ID: MathUtils] 
              5 SELECTOR
                6 [ID: random] 
                6 SelectorArguments
                  7 SUB
                    8 [Int Constant: 0] 
                    8 [Int Constant: 100] 
                  7 [Int Constant: 100] 
          3 Attribution
            4 Target
              5 [ID: squareDist] 
            4 DIV
              5 ADD
                6 MUL
                  7 IdentifierAccess
                    8 [ID: rand1] 
                  7 IdentifierAccess
                    8 [ID: rand1] 
                6 MUL
                  7 IdentifierAccess
                    8 [ID: rand2] 
                  7 IdentifierAccess
                    8 [ID: rand2] 
              5 [Int Constant: 100] 
          3 IfStructure
            4 IfHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: squareDist] 
                6 [Int Constant: 100] 
            4 Attribution
              5 Target
                6 [ID: in_circle] 
              5 [Boolean Constant: true] 
            4 ElseStructure
              5 Attribution
                6 Target
                  7 [ID: in_circle] 
                6 [Boolean Constant: false] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: in_circle] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: estimatePi100] 
            4 [Type: int] 
            4 [ID: n] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: samples_in_circle] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: samples_so_far] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: pi_estimate] 
          3 Attribution
            4 Target
              5 [ID: samples_so_far] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: samples_in_circle] 
            4 [Int Constant: 0] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: samples_so_far] 
                6 IdentifierAccess
                  7 [ID: n] 
            4 IfStructure
              5 IfHead
                6 THIS
                  7 SELECTOR
                    8 [ID: performSingleEstimate] 
                    8 SelectorArguments
              5 Attribution
                6 Target
                  7 [ID: samples_in_circle] 
                6 ADD
                  7 IdentifierAccess
                    8 [ID: samples_in_circle] 
                  7 [Int Constant: 1] 
              5 ElseStructure
            4 Attribution
              5 Target
                6 [ID: samples_so_far] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: samples_so_far] 
                6 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: pi_estimate] 
            4 DIV
              5 MUL
                6 [Int Constant: 400] 
                6 IdentifierAccess
                  7 [ID: samples_in_circle] 
              5 IdentifierAccess
                6 [ID: n] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: pi_estimate] 
        2 MainMethod
          3 [ID: args] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: pi_estimate_times_100] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: num_samples] 
          3 Attribution
            4 Target
              5 [ID: num_samples] 
            4 IdentifierAccess
              5 [ID: ioPlus] 
              5 SELECTOR
                6 [ID: requestNumber] 
                6 SelectorArguments
          3 Attribution
            4 Target
              5 [ID: pi_estimate_times_100] 
            4 New
              5 [ID: MonteCarloPi] 
              5 SelectorArguments
              5 SELECTOR
                6 [ID: estimatePi100] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: num_samples] 
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: ioPlus] 
              5 SELECTOR
                6 [ID: printResult] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: pi_estimate_times_100] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/MonteCarloPi.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 1
    	Signature MathUtils()

    Symbol 
    	Name random
    	Type 2
    	Signature random(int,int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name ioPlus
    	Type 1
    	Signature ioPlus()

    Symbol 
    	Name requestNumber
    	Type 2
    	Signature requestNumber()

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 1
    	Signature MathUtils()

    Symbol 
    	Name random
    	Type 2
    	Signature random(int,int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name ioPlus
    	Type 1
    	Signature ioPlus()

    Symbol 
    	Name requestNumber
    	Type 2
    	Signature requestNumber()

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"")""void"


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Symbol 
    	Name MonteCarloPi
    	Type 1
    	Signature MonteCarloPi()

    Symbol 
    	Name MonteCarloPi
    	Type 0
    	Signature MonteCarloPi

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 1
    	Signature MathUtils()

    Symbol 
    	Name random
    	Type 2
    	Signature random(int,int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name ioPlus
    	Type 1
    	Signature ioPlus()

    Symbol 
    	Name requestNumber
    	Type 2
    	Signature requestNumber()

    Symbol 
    	Name printResult
    	Type 2
    	Signature printResult(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name MonteCarloPi
    	Type 0
    	Signature MonteCarloPi

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name performSingleEstimate
    	Type 1
    	Signature performSingleEstimate()

    Symbol 
    	Name estimatePi100
    	Type 1
    	Signature estimatePi100(int)

    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name performSingleEstimate
    	Type 1
    	Signature performSingleEstimate()

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name rand1
    	Type 4
    	Signature rand1

    Symbol 
    	Name rand2
    	Type 4
    	Signature rand2

    Symbol 
    	Name in_circle
    	Type 4
    	Signature in_circle

    Symbol 
    	Name squareDist
    	Type 4
    	Signature squareDist

    Structures (5): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol rand1 return type int
        Structure Type: Expression: ACCESS Symbol MathUtils return type int
         Structure Type: Expression: METHOD ACCESS Symbol random(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol rand2 return type int
        Structure Type: Expression: ACCESS Symbol MathUtils return type int
         Structure Type: Expression: METHOD ACCESS Symbol random(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol squareDist return type int
        Structure Type: Expression: DIV return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: MUL return type int
           Structure Type: Expression: ACCESS Symbol rand1 return type int
           Structure Type: Expression: ACCESS Symbol rand1 return type int
          Structure Type: Expression: MUL return type int
           Structure Type: Expression: ACCESS Symbol rand2 return type int
           Structure Type: Expression: ACCESS Symbol rand2 return type int
         Structure Type: Expression: CONSTANT return type int
       Structure Type: IF
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol squareDist return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol in_circle return type boolean
         Structure Type: Expression: CONSTANT return type boolean
       Structure Type: Expression: RETURN Symbol in_circle return type boolean
        Structure Type: Expression: ACCESS Symbol in_circle return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name estimatePi100
    	Type 1
    	Signature estimatePi100(int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name n
    	Type 4
    	Signature n

    Symbol 
    	Name samples_in_circle
    	Type 4
    	Signature samples_in_circle

    Symbol 
    	Name samples_so_far
    	Type 4
    	Signature samples_so_far

    Symbol 
    	Name pi_estimate
    	Type 4
    	Signature pi_estimate

    Structures (5): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol samples_so_far return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol samples_in_circle return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol samples_so_far return type int
         Structure Type: Expression: ACCESS Symbol n return type int
        Structure Type: IF
         Structure Type: Expression: ACCESS return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol performSingleEstimate() return type boolean
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol samples_in_circle return type int
          Structure Type: Expression: ADD return type int
           Structure Type: Expression: ACCESS Symbol samples_in_circle return type int
           Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol samples_so_far return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol samples_so_far return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol pi_estimate return type int
        Structure Type: Expression: DIV return type int
         Structure Type: Expression: MUL return type int
          Structure Type: Expression: CONSTANT return type int
          Structure Type: Expression: ACCESS Symbol samples_in_circle return type int
         Structure Type: Expression: ACCESS Symbol n return type int
       Structure Type: Expression: RETURN Symbol pi_estimate return type int
        Structure Type: Expression: ACCESS Symbol pi_estimate return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name args
    	Type 4
    	Signature args

    Symbol 
    	Name pi_estimate_times_100
    	Type 4
    	Signature pi_estimate_times_100

    Symbol 
    	Name num_samples
    	Type 4
    	Signature num_samples

    Structures (3): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol num_samples return type int
        Structure Type: Expression: ACCESS Symbol ioPlus return type int
         Structure Type: Expression: METHOD ACCESS Symbol requestNumber() return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol pi_estimate_times_100 return type int
        Structure Type: Expression: METHOD ACCESS Symbol MonteCarloPi() return type int
         Structure Type: Expression: WARNING Unset expression return type MonteCarloPi
         Structure Type: Expression: METHOD ACCESS Symbol estimatePi100(int) return type int
       Structure Type: Expression: ACCESS Symbol ioPlus return type void
        Structure Type: Expression: METHOD ACCESS Symbol printResult(int) return type void





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
        2 [ID: print] 
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
              5 SelectorArguments
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
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/Life.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name read
    	Type 2
    	Signature read()

    Structures (0): 



    "import""static"<ID>"."<ID>"("")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name read
    	Type 2
    	Signature read()

    Structures (0): 



    "import""static"<ID>"."<ID>"("")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name read
    	Type 2
    	Signature read()

    Symbol 
    	Name println
    	Type 2
    	Signature println()

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name read
    	Type 2
    	Signature read()

    Symbol 
    	Name println
    	Type 2
    	Signature println()

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"")""void"
    WARNING, variable already available in scope: "field"


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Symbol 
    	Name Life
    	Type 1
    	Signature Life()

    Symbol 
    	Name Life
    	Type 0
    	Signature Life

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name read
    	Type 2
    	Signature read()

    Symbol 
    	Name println
    	Type 2
    	Signature println()

    Symbol 
    	Name print
    	Type 2
    	Signature print(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Life
    	Type 0
    	Signature Life

    Nmb children 16
    Symbol Table: 
    Symbol 
    	Name UNDERPOP_LIM
    	Type 4
    	Signature UNDERPOP_LIM

    Symbol 
    	Name OVERPOP_LIM
    	Type 4
    	Signature OVERPOP_LIM

    Symbol 
    	Name REPRODUCE_NUM
    	Type 4
    	Signature REPRODUCE_NUM

    Symbol 
    	Name LOOPS_PER_MS
    	Type 4
    	Signature LOOPS_PER_MS

    Symbol 
    	Name xMax
    	Type 4
    	Signature xMax

    Symbol 
    	Name yMax
    	Type 4
    	Signature yMax

    Symbol 
    	Name field
    	Type 4
    	Signature field

    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Symbol 
    	Name init
    	Type 1
    	Signature init()

    Symbol 
    	Name field
    	Type 1
    	Signature field(int[])

    Symbol 
    	Name update
    	Type 1
    	Signature update()

    Symbol 
    	Name printField
    	Type 1
    	Signature printField()

    Symbol 
    	Name trIdx
    	Type 1
    	Signature trIdx(int,int)

    Symbol 
    	Name cartIdx
    	Type 1
    	Signature cartIdx(int)

    Symbol 
    	Name getNeighborCoords
    	Type 1
    	Signature getNeighborCoords(int)

    Symbol 
    	Name getLiveNeighborN
    	Type 1
    	Signature getLiveNeighborN(int)

    Symbol 
    	Name busyWait
    	Type 1
    	Signature busyWait(int)

    Symbol 
    	Name eq
    	Type 1
    	Signature eq(int,int)

    Symbol 
    	Name ne
    	Type 1
    	Signature ne(int,int)

    Symbol 
    	Name lt
    	Type 1
    	Signature lt(int,int)

    Symbol 
    	Name le
    	Type 1
    	Signature le(int,int)

    Symbol 
    	Name gt
    	Type 1
    	Signature gt(int,int)

    Symbol 
    	Name ge
    	Type 1
    	Signature ge(int,int)

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name l
    	Type 4
    	Signature l

    Symbol 
    	Name unused
    	Type 4
    	Signature unused

    Structures (3): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol l return type Life
        Structure Type: Expression: METHOD ACCESS Symbol Life() return type Life
         Structure Type: Expression: WARNING Unset expression return type Life
       Structure Type: Expression: ACCESS Symbol Life return type boolean
        Structure Type: Expression: METHOD ACCESS Symbol init() return type boolean
       Structure Type: WHILE
        Structure Type: Expression: CONSTANT return type boolean
        Structure Type: Expression: ACCESS Symbol Life return type boolean
         Structure Type: Expression: METHOD ACCESS Symbol printField() return type boolean
        Structure Type: Expression: ACCESS Symbol Life return type boolean
         Structure Type: Expression: METHOD ACCESS Symbol update() return type boolean
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol unused return type int
         Structure Type: Expression: ACCESS Symbol io return type int
          Structure Type: Expression: METHOD ACCESS Symbol read() return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name init
    	Type 1
    	Signature init()

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name lineLenA
    	Type 4
    	Signature lineLenA

    Symbol 
    	Name lineLen
    	Type 4
    	Signature lineLen

    Structures (10): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol lineLenA return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol UNDERPOP_LIM return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol OVERPOP_LIM return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol REPRODUCE_NUM return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol LOOPS_PER_MS return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int[]
        Structure Type: Expression: ACCESS return type int[]
         Structure Type: Expression: METHOD ACCESS Symbol field(int[]) return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol lineLen return type int
        Structure Type: Expression: ACCESS Symbol lineLenA return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol xMax return type int
        Structure Type: Expression: SUB return type int
         Structure Type: Expression: ACCESS Symbol lineLen return type int
         Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol yMax return type int
        Structure Type: Expression: SUB return type int
         Structure Type: Expression: DIV return type int
          Structure Type: Expression: ACCESS Symbol field return type int
           Structure Type: Expression: LENGTH return type int
          Structure Type: Expression: ACCESS Symbol lineLen return type int
         Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name field
    	Type 1
    	Signature field(int[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name lineLen
    	Type 4
    	Signature lineLen

    Symbol 
    	Name field
    	Type 4
    	Signature field

    Structures (103): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol lineLen return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN Symbol field return type int[]
        Structure Type: Expression: ACCESS Symbol field return type int[]



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name update
    	Type 1
    	Signature update()

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name cur
    	Type 4
    	Signature cur

    Symbol 
    	Name neighN
    	Type 4
    	Signature neighN

    Symbol 
    	Name goodPop
    	Type 4
    	Signature goodPop

    Symbol 
    	Name newField
    	Type 4
    	Signature newField

    Structures (5): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol newField return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ACCESS Symbol field return type int
          Structure Type: Expression: LENGTH return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol cur return type int
         Structure Type: Expression: ACCESS Symbol field return type int
          Structure Type: Expression: ARRAY ACCESS return type int
           Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol neighN return type int
         Structure Type: Expression: ACCESS return type int
          Structure Type: Expression: METHOD ACCESS Symbol getLiveNeighborN(int) return type int
        Structure Type: IF
         Structure Type: Expression: NEGATE return type boolean
          Structure Type: Expression: LESSTHAN return type boolean
           Structure Type: Expression: ACCESS Symbol cur return type int
           Structure Type: Expression: CONSTANT return type int
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol goodPop return type boolean
          Structure Type: Expression: AND return type boolean
           Structure Type: Expression: ACCESS return type boolean
            Structure Type: Expression: METHOD ACCESS Symbol ge(int,int) return type boolean
           Structure Type: Expression: ACCESS return type boolean
            Structure Type: Expression: METHOD ACCESS Symbol le(int,int) return type boolean
         Structure Type: IF
          Structure Type: Expression: NEGATE return type boolean
           Structure Type: Expression: ACCESS Symbol goodPop return type boolean
          Structure Type: ATTRIBUTION
           Structure Type: Expression: ACCESS Symbol newField return type int
           Structure Type: Expression: ARRAY ACCESS return type int
            Structure Type: Expression: ACCESS Symbol i return type int
           Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol field return type int[]
        Structure Type: Expression: ACCESS Symbol newField return type int[]
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name printField
    	Type 1
    	Signature printField()

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name j
    	Type 4
    	Signature j

    Structures (6): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol j return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ACCESS Symbol field return type int
          Structure Type: Expression: LENGTH return type int
        Structure Type: IF
         Structure Type: Expression: ACCESS return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol gt(int,int) return type boolean
         Structure Type: Expression: ACCESS Symbol io return type void
          Structure Type: Expression: METHOD ACCESS Symbol println() return type void
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol j return type int
          Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS Symbol io return type void
         Structure Type: Expression: METHOD ACCESS Symbol print(int) return type void
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol j return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol j return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: ACCESS Symbol io return type void
        Structure Type: Expression: METHOD ACCESS Symbol println() return type void
       Structure Type: Expression: ACCESS Symbol io return type void
        Structure Type: Expression: METHOD ACCESS Symbol println() return type void
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name trIdx
    	Type 1
    	Signature trIdx(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name x
    	Type 4
    	Signature x

    Symbol 
    	Name y
    	Type 4
    	Signature y

    Structures (1): 
       Structure Type: Expression: RETURN return type int
        Structure Type: Expression: ADD return type int
         Structure Type: Expression: ACCESS Symbol x return type int
         Structure Type: Expression: MUL return type int
          Structure Type: Expression: ADD return type int
           Structure Type: Expression: ACCESS Symbol xMax return type int
           Structure Type: Expression: CONSTANT return type int
          Structure Type: Expression: ACCESS Symbol y return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name cartIdx
    	Type 1
    	Signature cartIdx(int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name absPos
    	Type 4
    	Signature absPos

    Symbol 
    	Name x
    	Type 4
    	Signature x

    Symbol 
    	Name y
    	Type 4
    	Signature y

    Symbol 
    	Name xLim
    	Type 4
    	Signature xLim

    Symbol 
    	Name ret
    	Type 4
    	Signature ret

    Structures (7): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol xLim return type int
        Structure Type: Expression: ADD return type int
         Structure Type: Expression: ACCESS Symbol xMax return type int
         Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol y return type int
        Structure Type: Expression: DIV return type int
         Structure Type: Expression: ACCESS Symbol absPos return type int
         Structure Type: Expression: ACCESS Symbol xLim return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol x return type int
        Structure Type: Expression: SUB return type int
         Structure Type: Expression: ACCESS Symbol absPos return type int
         Structure Type: Expression: MUL return type int
          Structure Type: Expression: ACCESS Symbol y return type int
          Structure Type: Expression: ACCESS Symbol xLim return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS Symbol x return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS Symbol y return type int
       Structure Type: Expression: RETURN Symbol ret return type int[]
        Structure Type: Expression: ACCESS Symbol ret return type int[]



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name getNeighborCoords
    	Type 1
    	Signature getNeighborCoords(int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name absPos
    	Type 4
    	Signature absPos

    Symbol 
    	Name x
    	Type 4
    	Signature x

    Symbol 
    	Name y
    	Type 4
    	Signature y

    Symbol 
    	Name upX
    	Type 4
    	Signature upX

    Symbol 
    	Name upY
    	Type 4
    	Signature upY

    Symbol 
    	Name downX
    	Type 4
    	Signature downX

    Symbol 
    	Name downY
    	Type 4
    	Signature downY

    Symbol 
    	Name cart
    	Type 4
    	Signature cart

    Symbol 
    	Name ret
    	Type 4
    	Signature ret

    Structures (15): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol cart return type int[]
        Structure Type: Expression: ACCESS return type int[]
         Structure Type: Expression: METHOD ACCESS Symbol cartIdx(int) return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol x return type int
        Structure Type: Expression: ACCESS Symbol cart return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol y return type int
        Structure Type: Expression: ACCESS Symbol cart return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: IF
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol x return type int
         Structure Type: Expression: ACCESS Symbol xMax return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol downX return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol x return type int
          Structure Type: Expression: CONSTANT return type int
        Structure Type: IF
         Structure Type: Expression: ACCESS return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol gt(int,int) return type boolean
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol upX return type int
          Structure Type: Expression: SUB return type int
           Structure Type: Expression: ACCESS Symbol x return type int
           Structure Type: Expression: CONSTANT return type int
       Structure Type: IF
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol y return type int
         Structure Type: Expression: ACCESS Symbol yMax return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol downY return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol y return type int
          Structure Type: Expression: CONSTANT return type int
        Structure Type: IF
         Structure Type: Expression: ACCESS return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol gt(int,int) return type boolean
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol upY return type int
          Structure Type: Expression: SUB return type int
           Structure Type: Expression: ACCESS Symbol y return type int
           Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type int
         Structure Type: Expression: METHOD ACCESS Symbol trIdx(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type int
         Structure Type: Expression: METHOD ACCESS Symbol trIdx(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type int
         Structure Type: Expression: METHOD ACCESS Symbol trIdx(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type int
         Structure Type: Expression: METHOD ACCESS Symbol trIdx(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type int
         Structure Type: Expression: METHOD ACCESS Symbol trIdx(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type int
         Structure Type: Expression: METHOD ACCESS Symbol trIdx(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type int
         Structure Type: Expression: METHOD ACCESS Symbol trIdx(int,int) return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type int
         Structure Type: Expression: METHOD ACCESS Symbol trIdx(int,int) return type int
       Structure Type: Expression: RETURN Symbol ret return type int[]
        Structure Type: Expression: ACCESS Symbol ret return type int[]



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name getLiveNeighborN
    	Type 1
    	Signature getLiveNeighborN(int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name absPos
    	Type 4
    	Signature absPos

    Symbol 
    	Name neigh
    	Type 4
    	Signature neigh

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name ret
    	Type 4
    	Signature ret

    Structures (5): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol ret return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol neigh return type int[]
        Structure Type: Expression: ACCESS return type int[]
         Structure Type: Expression: METHOD ACCESS Symbol getNeighborCoords(int) return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ACCESS Symbol neigh return type int
          Structure Type: Expression: LENGTH return type int
        Structure Type: IF
         Structure Type: Expression: ACCESS return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol ne(int,int) return type boolean
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol ret return type int
          Structure Type: Expression: ADD return type int
           Structure Type: Expression: ACCESS Symbol ret return type int
           Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN Symbol ret return type int
        Structure Type: Expression: ACCESS Symbol ret return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name busyWait
    	Type 1
    	Signature busyWait(int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name ms
    	Type 4
    	Signature ms

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name n
    	Type 4
    	Signature n

    Structures (4): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol n return type int
        Structure Type: Expression: MUL return type int
         Structure Type: Expression: ACCESS Symbol ms return type int
         Structure Type: Expression: ACCESS Symbol LOOPS_PER_MS return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ACCESS Symbol n return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name eq
    	Type 1
    	Signature eq(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Structures (1): 
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: NEGATE return type boolean
         Structure Type: Expression: AND return type boolean
          Structure Type: Expression: ACCESS return type boolean
           Structure Type: Expression: METHOD ACCESS Symbol lt(int,int) return type boolean
          Structure Type: Expression: NEGATE return type boolean
           Structure Type: Expression: ACCESS return type boolean
            Structure Type: Expression: METHOD ACCESS Symbol lt(int,int) return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name ne
    	Type 1
    	Signature ne(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Structures (1): 
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: NEGATE return type boolean
         Structure Type: Expression: ACCESS return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol eq(int,int) return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name lt
    	Type 1
    	Signature lt(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Structures (1): 
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol a return type int
         Structure Type: Expression: ACCESS Symbol b return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name le
    	Type 1
    	Signature le(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Structures (1): 
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: NEGATE return type boolean
         Structure Type: Expression: NEGATE return type boolean
          Structure Type: Expression: AND return type boolean
           Structure Type: Expression: ACCESS return type boolean
            Structure Type: Expression: METHOD ACCESS Symbol lt(int,int) return type boolean
           Structure Type: Expression: NEGATE return type boolean
            Structure Type: Expression: ACCESS return type boolean
             Structure Type: Expression: METHOD ACCESS Symbol eq(int,int) return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name gt
    	Type 1
    	Signature gt(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Structures (1): 
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: NEGATE return type boolean
         Structure Type: Expression: ACCESS return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol le(int,int) return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name ge
    	Type 1
    	Signature ge(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Structures (1): 
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: NEGATE return type boolean
         Structure Type: Expression: NEGATE return type boolean
          Structure Type: Expression: AND return type boolean
           Structure Type: Expression: ACCESS return type boolean
            Structure Type: Expression: METHOD ACCESS Symbol gt(int,int) return type boolean
           Structure Type: Expression: NEGATE return type boolean
            Structure Type: Expression: ACCESS return type boolean
             Structure Type: Expression: METHOD ACCESS Symbol eq(int,int) return type boolean





ParserTest > testsimple_length STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/simple_length.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/simple_length.jmm
    Parser starting
    UNEXPECTED Parsing Exception
    PARSING ERROR
    Unexpected symbol encountered: . on line 8, column 13
    Was expecting one of the following symbols:
    [ ";", "+", "-", "*", "/", "&&"  ]


ParserTest > testsimple_length STANDARD_ERROR
    java.lang.Exception: Parser failure
    	at JMMParser.parse(JMMParser.java:25)
    	at Main.main(Main.java:49)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testsimple_length(ParserTest.java:132)
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

ParserTest > testsimple_length STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testsimple_length STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testsimple_length(ParserTest.java:132)
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
    Caused by: java.lang.RuntimeException: Syntatical error
    	at Main.main(Main.java:53)
    	... 53 more

ParserTest > testvar_exp_incomp STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_exp_incomp.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_exp_incomp.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: j] 
          3 Attribution
            4 Target
              5 [ID: j] 
            4 [Boolean Constant: true] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 IdentifierAccess
              5 [ID: j] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_exp_incomp.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name j
    	Type 4
    	Signature j

    Structures (1): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol j return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    <ID>"="<ID>
    		ERROR incompatibility detected
    IncompatibleException: int is incompatible with boolean
    On line 10
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testvar_exp_incomp STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testvar_exp_incomp(ParserTest.java:137)
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
    	at Main.main(Main.java:69)
    	... 53 more

ParserTest > testMissingRightPar STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/MissingRightPar.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/MissingRightPar.jmm
    Parser starting
    COULD NOT PARSE WHILE
    PARSING ERROR
    Unexpected symbol encountered: { on line 3, column 13
    Was expecting one of the following symbols:
    [ ")", "+", "-", "*", "/", "&&"  ]


ParserTest > testMissingRightPar STANDARD_ERROR
    java.lang.Exception: Parser failure
    	at JMMParser.parse(JMMParser.java:35)
    	at Main.main(Main.java:49)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testMissingRightPar(ParserTest.java:177)
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

ParserTest > testMissingRightPar STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testMissingRightPar STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testMissingRightPar(ParserTest.java:177)
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
    Caused by: java.lang.RuntimeException: Syntatical error
    	at Main.main(Main.java:53)
    	... 53 more

ParserTest > testLazysort STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/Lazysort.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/Lazysort.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: MathUtils] 
        2 [ID: random] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 [Type: int] 
        2 RETURN
          3 [Type: int] 
      1 ImportDeclaration
        2 [ID: Quicksort] 
      1 ImportDeclaration
        2 [ID: Quicksort] 
        2 [ID: quicksort] 
        2 IMPORTMETHOD
        2 [Type: int[]] 
        2 [Type: int] 
        2 [Type: int] 
        2 RETURN
          3 [Type: boolean] 
      1 ImportDeclaration
        2 [ID: Quicksort] 
        2 [ID: printL] 
        2 IMPORTMETHOD
        2 [Type: int[]] 
        2 RETURN
          3 [Type: boolean] 
      1 ClassDeclaration
        2 ClassHead
          3 [ID: Lazysort] 
          3 [ID: Quicksort] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: L] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: d] 
          3 VarDeclaration
            4 [Type: Lazysort] 
            4 [ID: q] 
          3 Attribution
            4 Target
              5 [ID: L] 
            4 New
              5 [Int Constant: 10] 
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
                  7 [ID: L] 
                  7 SELECTOR
                    8 LENGTH
            4 Attribution
              5 Target
                6 [ID: L] 
                6 ArrayAccess
                  7 IdentifierAccess
                    8 [ID: i] 
              5 SUB
                6 IdentifierAccess
                  7 [ID: L] 
                  7 SELECTOR
                    8 LENGTH
                6 IdentifierAccess
                  7 [ID: i] 
            4 Attribution
              5 Target
                6 [ID: i] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: i] 
                6 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: q] 
            4 New
              5 [ID: Lazysort] 
              5 SelectorArguments
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: q] 
              5 SELECTOR
                6 [ID: quicksort] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: L] 
          3 Attribution
            4 Target
              5 [ID: d] 
            4 IdentifierAccess
              5 [ID: q] 
              5 SELECTOR
                6 [ID: printL] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: L] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: quicksort] 
            4 [Type: int[]] 
            4 [ID: L] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: lazy] 
          3 IfStructure
            4 IfHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: MathUtils] 
                  7 SELECTOR
                    8 [ID: random] 
                    8 SelectorArguments
                      9 [Int Constant: 0] 
                      9 [Int Constant: 5] 
                6 [Int Constant: 4] 
            4 DIRECTEXPRESSION
              5 THIS
                6 SELECTOR
                  7 [ID: beLazy] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: L] 
            4 Attribution
              5 Target
                6 [ID: lazy] 
              5 [Boolean Constant: true] 
            4 ElseStructure
              5 Attribution
                6 Target
                  7 [ID: lazy] 
                6 [Boolean Constant: false] 
          3 IfStructure
            4 IfHead
              5 IdentifierAccess
                6 [ID: lazy] 
            4 Attribution
              5 Target
                6 [ID: lazy] 
              5 Negate
                6 IdentifierAccess
                  7 [ID: lazy] 
            4 ElseStructure
              5 Attribution
                6 Target
                  7 [ID: lazy] 
                6 THIS
                  7 SELECTOR
                    8 [ID: quicksort] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: L] 
                      9 [Int Constant: 0] 
                      9 SUB
                        10 IdentifierAccess
                          11 [ID: L] 
                          11 SELECTOR
                            12 LENGTH
                        10 [Int Constant: 1] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: lazy] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: beLazy] 
            4 [Type: int[]] 
            4 [ID: L] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: _allowedNameL] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: $allowedNameI] 
          3 Attribution
            4 Target
              5 [ID: _allowedNameL] 
            4 IdentifierAccess
              5 [ID: L] 
              5 SELECTOR
                6 LENGTH
          3 Attribution
            4 Target
              5 [ID: $allowedNameI] 
            4 [Int Constant: 0] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: $allowedNameI] 
                6 DIV
                  7 IdentifierAccess
                    8 [ID: _allowedNameL] 
                  7 [Int Constant: 2] 
            4 Attribution
              5 Target
                6 [ID: L] 
                6 ArrayAccess
                  7 IdentifierAccess
                    8 [ID: $allowedNameI] 
              5 IdentifierAccess
                6 [ID: MathUtils] 
                6 SELECTOR
                  7 [ID: random] 
                  7 SelectorArguments
                    8 [Int Constant: 0] 
                    8 [Int Constant: 10] 
            4 Attribution
              5 Target
                6 [ID: $allowedNameI] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: $allowedNameI] 
                6 [Int Constant: 1] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: $allowedNameI] 
                6 IdentifierAccess
                  7 [ID: _allowedNameL] 
            4 Attribution
              5 Target
                6 [ID: L] 
                6 ArrayAccess
                  7 IdentifierAccess
                    8 [ID: $allowedNameI] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: MathUtils] 
                  7 SELECTOR
                    8 [ID: random] 
                    8 SelectorArguments
                      9 [Int Constant: 0] 
                      9 [Int Constant: 10] 
                6 [Int Constant: 1] 
            4 Attribution
              5 Target
                6 [ID: $allowedNameI] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: $allowedNameI] 
                6 [Int Constant: 1] 
          3 RETURN
            4 [Boolean Constant: true] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/Lazysort.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 1
    	Signature MathUtils()

    Symbol 
    	Name random
    	Type 2
    	Signature random(int,int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Nmb children 0
    Symbol Table: 
    Structures (0): 



    "import"<ID>"."<ID>"(""int""[""]"",""int"",""int"")""boolean"
    WARNING, variable already available in scope: "Quicksort()"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 1
    	Signature MathUtils()

    Symbol 
    	Name random
    	Type 2
    	Signature random(int,int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[],int,int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int""[""]"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 1
    	Signature MathUtils()

    Symbol 
    	Name random
    	Type 2
    	Signature random(int,int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[],int,int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int""[""]"")""boolean"
    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[],int,int)

    Symbol 
    	Name printL
    	Type 1
    	Signature printL(int[])

    Structures (0): 



    WARNING, variable already available in scope: "Quicksort()"


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Symbol 
    	Name Lazysort
    	Type 1
    	Signature Lazysort()

    Symbol 
    	Name Lazysort
    	Type 0
    	Signature Lazysort

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name MathUtils
    	Type 0
    	Signature MathUtils

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name MathUtils
    	Type 1
    	Signature MathUtils()

    Symbol 
    	Name random
    	Type 2
    	Signature random(int,int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[],int,int)

    Symbol 
    	Name printL
    	Type 1
    	Signature printL(int[])

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Lazysort
    	Type 0
    	Signature Lazysort

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[],int,int)

    Symbol 
    	Name printL
    	Type 1
    	Signature printL(int[])

    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[])

    Symbol 
    	Name beLazy
    	Type 1
    	Signature beLazy(int[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name L
    	Type 4
    	Signature L

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name d
    	Type 4
    	Signature d

    Symbol 
    	Name q
    	Type 4
    	Signature q

    Structures (6): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol L return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ACCESS Symbol L return type int
          Structure Type: Expression: LENGTH return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol L return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: SUB return type int
          Structure Type: Expression: ACCESS Symbol L return type int
           Structure Type: Expression: LENGTH return type int
          Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol q return type Lazysort
        Structure Type: Expression: METHOD ACCESS Symbol Lazysort() return type Lazysort
         Structure Type: Expression: WARNING Unset expression return type Lazysort
       Structure Type: Expression: ACCESS Symbol Lazysort return type boolean
        Structure Type: Expression: METHOD ACCESS Symbol quicksort(int[]) return type boolean
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol d return type boolean
        Structure Type: Expression: ACCESS Symbol Lazysort return type boolean
         Structure Type: Expression: METHOD ACCESS Symbol printL(int[]) return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name L
    	Type 4
    	Signature L

    Symbol 
    	Name lazy
    	Type 4
    	Signature lazy

    Structures (3): 
       Structure Type: IF
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol MathUtils return type int
          Structure Type: Expression: METHOD ACCESS Symbol random(int,int) return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: ACCESS return type boolean
         Structure Type: Expression: METHOD ACCESS Symbol beLazy(int[]) return type boolean
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol lazy return type boolean
         Structure Type: Expression: CONSTANT return type boolean
       Structure Type: IF
        Structure Type: Expression: ACCESS Symbol lazy return type boolean
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol lazy return type boolean
         Structure Type: Expression: NEGATE return type boolean
          Structure Type: Expression: ACCESS Symbol lazy return type boolean
       Structure Type: Expression: RETURN Symbol lazy return type boolean
        Structure Type: Expression: ACCESS Symbol lazy return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name beLazy
    	Type 1
    	Signature beLazy(int[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name L
    	Type 4
    	Signature L

    Symbol 
    	Name _allowedNameL
    	Type 4
    	Signature _allowedNameL

    Symbol 
    	Name $allowedNameI
    	Type 4
    	Signature $allowedNameI

    Structures (5): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol _allowedNameL return type int
        Structure Type: Expression: ACCESS Symbol L return type int
         Structure Type: Expression: LENGTH return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
         Structure Type: Expression: DIV return type int
          Structure Type: Expression: ACCESS Symbol _allowedNameL return type int
          Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol L return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
         Structure Type: Expression: ACCESS Symbol MathUtils return type int
          Structure Type: Expression: METHOD ACCESS Symbol random(int,int) return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
         Structure Type: Expression: ACCESS Symbol _allowedNameL return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol L return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol MathUtils return type int
           Structure Type: Expression: METHOD ACCESS Symbol random(int,int) return type int
          Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol $allowedNameI return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean





ParserTest > testmiss_type STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/extra/miss_type.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/extra/miss_type.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: Miss] 
            4 [ID: m] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/extra/miss_type.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Structures (0): 



    <ID><ID>
    		ERROR Undeclared entity
    UndeclaredException: Undefined data type Miss
    On line 7
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testmiss_type STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testmiss_type(ParserTest.java:157)
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
    	at Main.main(Main.java:65)
    	... 53 more

ParserTest > testbadArguments STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/badArguments.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/badArguments.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: a] 
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: io] 
              5 SELECTOR
                6 [ID: println] 
                6 SelectorArguments
                  7 [Int Constant: 10] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: foo] 
            4 [Type: boolean] 
            4 [ID: a] 
          3 DIRECTEXPRESSION
            4 THIS
              5 SELECTOR
                6 [ID: foo] 
                6 SelectorArguments
                  7 [Int Constant: 10] 
          3 DIRECTEXPRESSION
            4 THIS
              5 SELECTOR
                6 [ID: foo] 
                6 SelectorArguments
                  7 [Boolean Constant: true] 
                  7 [Int Constant: 20] 
          3 RETURN
            4 [Int Constant: 1] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/badArguments.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Symbol 
    	Name foo
    	Type 1
    	Signature foo(boolean)

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name foo
    	Type 1
    	Signature foo(boolean)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Structures (0): 



    <ID>"."<ID>"("<INTEGER>
    		ERROR Undeclared entity
    UndeclaredException: Undefined io
    On line 7
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testbadArguments STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testbadArguments(ParserTest.java:117)
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
    	at Main.main(Main.java:65)
    	... 53 more

ParserTest > testTicTacToe STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/TicTacToe.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/TicTacToe.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: BoardBase] 
        2 [ID: sameArray] 
        2 IMPORTMETHOD
        2 [Type: int[]] 
        2 RETURN
          3 [Type: boolean] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: BoardBase] 
        2 [ID: sameArray] 
        2 IMPORTMETHOD
        2 [Type: int[]] 
        2 RETURN
          3 [Type: boolean] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: BoardBase] 
        2 [ID: printBoard] 
        2 IMPORTMETHOD
        2 [Type: int[]] 
        2 [Type: int[]] 
        2 [Type: int[]] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: BoardBase] 
        2 [ID: printWinner] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: BoardBase] 
        2 [ID: playerTurn] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 RETURN
          3 [Type: int[]] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: BoardBase] 
        2 [ID: wrongMove] 
        2 IMPORTMETHOD
      1 ImportDeclaration
        2 STATIC
        2 [ID: BoardBase] 
        2 [ID: placeTaken] 
        2 IMPORTMETHOD
      1 ClassDeclaration
        2 ClassHead
          3 [ID: TicTacToe] 
        2 VarDeclaration
          3 [Type: int[]] 
          3 [ID: row0] 
        2 VarDeclaration
          3 [Type: int[]] 
          3 [ID: row1] 
        2 VarDeclaration
          3 [Type: int[]] 
          3 [ID: row2] 
        2 VarDeclaration
          3 [Type: int] 
          3 [ID: whoseturn] 
        2 VarDeclaration
          3 [Type: int] 
          3 [ID: movesmade] 
        2 VarDeclaration
          3 [Type: int[]] 
          3 [ID: pieces] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: init] 
          3 Attribution
            4 Target
              5 [ID: row0] 
            4 New
              5 [Int Constant: 3] 
          3 Attribution
            4 Target
              5 [ID: row1] 
            4 New
              5 [Int Constant: 3] 
          3 Attribution
            4 Target
              5 [ID: row2] 
            4 New
              5 [Int Constant: 3] 
          3 Attribution
            4 Target
              5 [ID: pieces] 
            4 New
              5 [Int Constant: 2] 
          3 Attribution
            4 Target
              5 [ID: pieces] 
              5 ArrayAccess
                6 [Int Constant: 0] 
            4 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: pieces] 
              5 ArrayAccess
                6 [Int Constant: 1] 
            4 [Int Constant: 2] 
          3 Attribution
            4 Target
              5 [ID: whoseturn] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: movesmade] 
            4 [Int Constant: 0] 
          3 RETURN
            4 [Boolean Constant: true] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int[]] 
            4 [ID: getRow0] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: row0] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int[]] 
            4 [ID: getRow1] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: row1] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int[]] 
            4 [ID: getRow2] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: row2] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: MoveRow] 
            4 [Type: int[]] 
            4 [ID: row] 
            4 [Type: int] 
            4 [ID: column] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: moved] 
          3 IfStructure
            4 IfHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: column] 
                6 [Int Constant: 0] 
            4 Attribution
              5 Target
                6 [ID: moved] 
              5 [Boolean Constant: false] 
            4 ElseStructure
              5 IfStructure
                6 IfHead
                  7 LESSTHAN
                    8 [Int Constant: 2] 
                    8 IdentifierAccess
                      9 [ID: column] 
                6 Attribution
                  7 Target
                    8 [ID: moved] 
                  7 [Boolean Constant: false] 
                6 ElseStructure
                  7 IfStructure
                    8 IfHead
                      9 LESSTHAN
                        10 [Int Constant: 0] 
                        10 IdentifierAccess
                          11 [ID: row] 
                          11 ArrayAccess
                            12 IdentifierAccess
                              13 [ID: column] 
                    8 Attribution
                      9 Target
                        10 [ID: moved] 
                      9 [Boolean Constant: false] 
                    8 ElseStructure
                      9 Attribution
                        10 Target
                          11 [ID: row] 
                          11 ArrayAccess
                            12 IdentifierAccess
                              13 [ID: column] 
                        10 IdentifierAccess
                          11 [ID: pieces] 
                          11 ArrayAccess
                            12 IdentifierAccess
                              13 [ID: whoseturn] 
                      9 Attribution
                        10 Target
                          11 [ID: movesmade] 
                        10 ADD
                          11 IdentifierAccess
                            12 [ID: movesmade] 
                          11 [Int Constant: 1] 
                      9 Attribution
                        10 Target
                          11 [ID: moved] 
                        10 [Boolean Constant: true] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: moved] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: Move] 
            4 [Type: int] 
            4 [ID: row] 
            4 [Type: int] 
            4 [ID: column] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: mov] 
          3 IfStructure
            4 IfHead
              5 Negate
                6 AND
                  7 LESSTHAN
                    8 IdentifierAccess
                      9 [ID: row] 
                    8 [Int Constant: 0] 
                  7 Negate
                    8 LESSTHAN
                      9 [Int Constant: 0] 
                      9 IdentifierAccess
                        10 [ID: row] 
            4 Attribution
              5 Target
                6 [ID: mov] 
              5 THIS
                6 SELECTOR
                  7 [ID: MoveRow] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: row0] 
                    8 IdentifierAccess
                      9 [ID: column] 
            4 ElseStructure
              5 IfStructure
                6 IfHead
                  7 Negate
                    8 AND
                      9 LESSTHAN
                        10 IdentifierAccess
                          11 [ID: row] 
                        10 [Int Constant: 1] 
                      9 Negate
                        10 LESSTHAN
                          11 [Int Constant: 1] 
                          11 IdentifierAccess
                            12 [ID: row] 
                6 Attribution
                  7 Target
                    8 [ID: mov] 
                  7 THIS
                    8 SELECTOR
                      9 [ID: MoveRow] 
                      9 SelectorArguments
                        10 IdentifierAccess
                          11 [ID: row1] 
                        10 IdentifierAccess
                          11 [ID: column] 
                6 ElseStructure
                  7 IfStructure
                    8 IfHead
                      9 Negate
                        10 AND
                          11 LESSTHAN
                            12 IdentifierAccess
                              13 [ID: row] 
                            12 [Int Constant: 2] 
                          11 Negate
                            12 LESSTHAN
                              13 [Int Constant: 2] 
                              13 IdentifierAccess
                                14 [ID: row] 
                    8 Attribution
                      9 Target
                        10 [ID: mov] 
                      9 THIS
                        10 SELECTOR
                          11 [ID: MoveRow] 
                          11 SelectorArguments
                            12 IdentifierAccess
                              13 [ID: row2] 
                            12 IdentifierAccess
                              13 [ID: column] 
                    8 ElseStructure
                      9 Attribution
                        10 Target
                          11 [ID: mov] 
                        10 [Boolean Constant: false] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: mov] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: inbounds] 
            4 [Type: int] 
            4 [ID: row] 
            4 [Type: int] 
            4 [ID: column] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: in] 
          3 IfStructure
            4 IfHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: row] 
                6 [Int Constant: 0] 
            4 Attribution
              5 Target
                6 [ID: in] 
              5 [Boolean Constant: false] 
            4 ElseStructure
              5 IfStructure
                6 IfHead
                  7 LESSTHAN
                    8 IdentifierAccess
                      9 [ID: column] 
                    8 [Int Constant: 0] 
                6 Attribution
                  7 Target
                    8 [ID: in] 
                  7 [Boolean Constant: false] 
                6 ElseStructure
                  7 IfStructure
                    8 IfHead
                      9 LESSTHAN
                        10 [Int Constant: 2] 
                        10 IdentifierAccess
                          11 [ID: row] 
                    8 Attribution
                      9 Target
                        10 [ID: in] 
                      9 [Boolean Constant: false] 
                    8 ElseStructure
                      9 IfStructure
                        10 IfHead
                          11 LESSTHAN
                            12 [Int Constant: 2] 
                            12 IdentifierAccess
                              13 [ID: column] 
                        10 Attribution
                          11 Target
                            12 [ID: in] 
                          11 [Boolean Constant: false] 
                        10 ElseStructure
                          11 Attribution
                            12 Target
                              13 [ID: in] 
                            12 [Boolean Constant: true] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: in] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: changeturn] 
          3 Attribution
            4 Target
              5 [ID: whoseturn] 
            4 SUB
              5 [Int Constant: 1] 
              5 IdentifierAccess
                6 [ID: whoseturn] 
          3 RETURN
            4 [Boolean Constant: true] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: getCurrentPlayer] 
          3 RETURN
            4 ADD
              5 IdentifierAccess
                6 [ID: whoseturn] 
              5 [Int Constant: 1] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: winner] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: array] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: winner] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 Attribution
            4 Target
              5 [ID: winner] 
            4 SUB
              5 [Int Constant: 0] 
              5 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: array] 
            4 New
              5 [Int Constant: 3] 
          3 IfStructure
            4 IfHead
              5 AND
                6 IdentifierAccess
                  7 [ID: BoardBase] 
                  7 SELECTOR
                    8 [ID: sameArray] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: row0] 
                6 LESSTHAN
                  7 [Int Constant: 0] 
                  7 IdentifierAccess
                    8 [ID: row0] 
                    8 ArrayAccess
                      9 [Int Constant: 0] 
            4 Attribution
              5 Target
                6 [ID: winner] 
              5 IdentifierAccess
                6 [ID: row0] 
                6 ArrayAccess
                  7 [Int Constant: 0] 
            4 ElseStructure
              5 IfStructure
                6 IfHead
                  7 AND
                    8 IdentifierAccess
                      9 [ID: BoardBase] 
                      9 SELECTOR
                        10 [ID: sameArray] 
                        10 SelectorArguments
                          11 IdentifierAccess
                            12 [ID: row1] 
                    8 LESSTHAN
                      9 [Int Constant: 0] 
                      9 IdentifierAccess
                        10 [ID: row1] 
                        10 ArrayAccess
                          11 [Int Constant: 0] 
                6 Attribution
                  7 Target
                    8 [ID: winner] 
                  7 IdentifierAccess
                    8 [ID: row1] 
                    8 ArrayAccess
                      9 [Int Constant: 0] 
                6 ElseStructure
                  7 IfStructure
                    8 IfHead
                      9 AND
                        10 IdentifierAccess
                          11 [ID: BoardBase] 
                          11 SELECTOR
                            12 [ID: sameArray] 
                            12 SelectorArguments
                              13 IdentifierAccess
                                14 [ID: row2] 
                        10 LESSTHAN
                          11 [Int Constant: 0] 
                          11 IdentifierAccess
                            12 [ID: row2] 
                            12 ArrayAccess
                              13 [Int Constant: 0] 
                    8 Attribution
                      9 Target
                        10 [ID: winner] 
                      9 IdentifierAccess
                        10 [ID: row2] 
                        10 ArrayAccess
                          11 [Int Constant: 0] 
                    8 ElseStructure
                      9 Attribution
                        10 Target
                          11 [ID: i] 
                        10 [Int Constant: 0] 
                      9 WhileStructure
                        10 WhileHead
                          11 AND
                            12 LESSTHAN
                              13 IdentifierAccess
                                14 [ID: winner] 
                              13 [Int Constant: 1] 
                            12 LESSTHAN
                              13 IdentifierAccess
                                14 [ID: i] 
                              13 [Int Constant: 3] 
                        10 Attribution
                          11 Target
                            12 [ID: array] 
                            12 ArrayAccess
                              13 [Int Constant: 0] 
                          11 IdentifierAccess
                            12 [ID: row0] 
                            12 ArrayAccess
                              13 IdentifierAccess
                                14 [ID: i] 
                        10 Attribution
                          11 Target
                            12 [ID: array] 
                            12 ArrayAccess
                              13 [Int Constant: 1] 
                          11 IdentifierAccess
                            12 [ID: row1] 
                            12 ArrayAccess
                              13 IdentifierAccess
                                14 [ID: i] 
                        10 Attribution
                          11 Target
                            12 [ID: array] 
                            12 ArrayAccess
                              13 [Int Constant: 2] 
                          11 IdentifierAccess
                            12 [ID: row2] 
                            12 ArrayAccess
                              13 IdentifierAccess
                                14 [ID: i] 
                        10 IfStructure
                          11 IfHead
                            12 AND
                              13 IdentifierAccess
                                14 [ID: BoardBase] 
                                14 SELECTOR
                                  15 [ID: sameArray] 
                                  15 SelectorArguments
                                    16 IdentifierAccess
                                      17 [ID: array] 
                              13 LESSTHAN
                                14 [Int Constant: 0] 
                                14 IdentifierAccess
                                  15 [ID: array] 
                                  15 ArrayAccess
                                    16 [Int Constant: 0] 
                          11 Attribution
                            12 Target
                              13 [ID: winner] 
                            12 IdentifierAccess
                              13 [ID: array] 
                              13 ArrayAccess
                                14 [Int Constant: 0] 
                          11 ElseStructure
                        10 Attribution
                          11 Target
                            12 [ID: i] 
                          11 ADD
                            12 IdentifierAccess
                              13 [ID: i] 
                            12 [Int Constant: 1] 
                      9 IfStructure
                        10 IfHead
                          11 LESSTHAN
                            12 IdentifierAccess
                              13 [ID: winner] 
                            12 [Int Constant: 1] 
                        10 Attribution
                          11 Target
                            12 [ID: array] 
                            12 ArrayAccess
                              13 [Int Constant: 0] 
                          11 IdentifierAccess
                            12 [ID: row0] 
                            12 ArrayAccess
                              13 [Int Constant: 0] 
                        10 Attribution
                          11 Target
                            12 [ID: array] 
                            12 ArrayAccess
                              13 [Int Constant: 1] 
                          11 IdentifierAccess
                            12 [ID: row1] 
                            12 ArrayAccess
                              13 [Int Constant: 1] 
                        10 Attribution
                          11 Target
                            12 [ID: array] 
                            12 ArrayAccess
                              13 [Int Constant: 2] 
                          11 IdentifierAccess
                            12 [ID: row2] 
                            12 ArrayAccess
                              13 [Int Constant: 2] 
                        10 IfStructure
                          11 IfHead
                            12 AND
                              13 IdentifierAccess
                                14 [ID: BoardBase] 
                                14 SELECTOR
                                  15 [ID: sameArray] 
                                  15 SelectorArguments
                                    16 IdentifierAccess
                                      17 [ID: array] 
                              13 LESSTHAN
                                14 [Int Constant: 0] 
                                14 IdentifierAccess
                                  15 [ID: array] 
                                  15 ArrayAccess
                                    16 [Int Constant: 0] 
                          11 Attribution
                            12 Target
                              13 [ID: winner] 
                            12 IdentifierAccess
                              13 [ID: array] 
                              13 ArrayAccess
                                14 [Int Constant: 0] 
                          11 ElseStructure
                            12 Attribution
                              13 Target
                                14 [ID: array] 
                                14 ArrayAccess
                                  15 [Int Constant: 0] 
                              13 IdentifierAccess
                                14 [ID: row0] 
                                14 ArrayAccess
                                  15 [Int Constant: 2] 
                            12 Attribution
                              13 Target
                                14 [ID: array] 
                                14 ArrayAccess
                                  15 [Int Constant: 1] 
                              13 IdentifierAccess
                                14 [ID: row1] 
                                14 ArrayAccess
                                  15 [Int Constant: 1] 
                            12 Attribution
                              13 Target
                                14 [ID: array] 
                                14 ArrayAccess
                                  15 [Int Constant: 2] 
                              13 IdentifierAccess
                                14 [ID: row2] 
                                14 ArrayAccess
                                  15 [Int Constant: 0] 
                            12 IfStructure
                              13 IfHead
                                14 AND
                                  15 IdentifierAccess
                                    16 [ID: BoardBase] 
                                    16 SELECTOR
                                      17 [ID: sameArray] 
                                      17 SelectorArguments
                                        18 IdentifierAccess
                                          19 [ID: array] 
                                  15 LESSTHAN
                                    16 [Int Constant: 0] 
                                    16 IdentifierAccess
                                      17 [ID: array] 
                                      17 ArrayAccess
                                        18 [Int Constant: 0] 
                              13 Attribution
                                14 Target
                                  15 [ID: winner] 
                                14 IdentifierAccess
                                  15 [ID: array] 
                                  15 ArrayAccess
                                    16 [Int Constant: 0] 
                              13 ElseStructure
                        10 ElseStructure
          3 IfStructure
            4 IfHead
              5 AND
                6 LESSTHAN
                  7 IdentifierAccess
                    8 [ID: winner] 
                  7 [Int Constant: 1] 
                6 Negate
                  7 AND
                    8 LESSTHAN
                      9 IdentifierAccess
                        10 [ID: movesmade] 
                      9 [Int Constant: 9] 
                    8 Negate
                      9 LESSTHAN
                        10 [Int Constant: 9] 
                        10 IdentifierAccess
                          11 [ID: movesmade] 
            4 Attribution
              5 Target
                6 [ID: winner] 
              5 [Int Constant: 0] 
            4 ElseStructure
          3 RETURN
            4 IdentifierAccess
              5 [ID: winner] 
        2 MainMethod
          3 [ID: args] 
          3 VarDeclaration
            4 [Type: TicTacToe] 
            4 [ID: mygame] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: win] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: done] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: move] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: player] 
          3 Attribution
            4 Target
              5 [ID: mygame] 
            4 New
              5 [ID: TicTacToe] 
              5 SelectorArguments
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: mygame] 
              5 SELECTOR
                6 [ID: init] 
                6 SelectorArguments
          3 WhileStructure
            4 WhileHead
              5 Negate
                6 AND
                  7 LESSTHAN
                    8 IdentifierAccess
                      9 [ID: mygame] 
                      9 SELECTOR
                        10 [ID: winner] 
                        10 SelectorArguments
                    8 SUB
                      9 [Int Constant: 0] 
                      9 [Int Constant: 1] 
                  7 Negate
                    8 LESSTHAN
                      9 SUB
                        10 [Int Constant: 0] 
                        10 [Int Constant: 1] 
                      9 IdentifierAccess
                        10 [ID: mygame] 
                        10 SELECTOR
                          11 [ID: winner] 
                          11 SelectorArguments
            4 Attribution
              5 Target
                6 [ID: done] 
              5 [Boolean Constant: false] 
            4 WhileStructure
              5 WhileHead
                6 Negate
                  7 IdentifierAccess
                    8 [ID: done] 
              5 DIRECTEXPRESSION
                6 IdentifierAccess
                  7 [ID: BoardBase] 
                  7 SELECTOR
                    8 [ID: printBoard] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: mygame] 
                        10 SELECTOR
                          11 [ID: getRow0] 
                          11 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: mygame] 
                        10 SELECTOR
                          11 [ID: getRow1] 
                          11 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: mygame] 
                        10 SELECTOR
                          11 [ID: getRow2] 
                          11 SelectorArguments
              5 Attribution
                6 Target
                  7 [ID: player] 
                6 IdentifierAccess
                  7 [ID: mygame] 
                  7 SELECTOR
                    8 [ID: getCurrentPlayer] 
                    8 SelectorArguments
              5 Attribution
                6 Target
                  7 [ID: move] 
                6 IdentifierAccess
                  7 [ID: BoardBase] 
                  7 SELECTOR
                    8 [ID: playerTurn] 
                    8 SelectorArguments
                      9 IdentifierAccess
                        10 [ID: player] 
              5 IfStructure
                6 IfHead
                  7 Negate
                    8 IdentifierAccess
                      9 [ID: mygame] 
                      9 SELECTOR
                        10 [ID: inbounds] 
                        10 SelectorArguments
                          11 IdentifierAccess
                            12 [ID: move] 
                            12 ArrayAccess
                              13 [Int Constant: 0] 
                          11 IdentifierAccess
                            12 [ID: move] 
                            12 ArrayAccess
                              13 [Int Constant: 1] 
                6 DIRECTEXPRESSION
                  7 IdentifierAccess
                    8 [ID: BoardBase] 
                    8 SELECTOR
                      9 [ID: wrongMove] 
                      9 SelectorArguments
                6 ElseStructure
                  7 IfStructure
                    8 IfHead
                      9 Negate
                        10 IdentifierAccess
                          11 [ID: mygame] 
                          11 SELECTOR
                            12 [ID: Move] 
                            12 SelectorArguments
                              13 IdentifierAccess
                                14 [ID: move] 
                                14 ArrayAccess
                                  15 [Int Constant: 0] 
                              13 IdentifierAccess
                                14 [ID: move] 
                                14 ArrayAccess
                                  15 [Int Constant: 1] 
                    8 DIRECTEXPRESSION
                      9 IdentifierAccess
                        10 [ID: BoardBase] 
                        10 SELECTOR
                          11 [ID: placeTaken] 
                          11 SelectorArguments
                    8 ElseStructure
                      9 Attribution
                        10 Target
                          11 [ID: done] 
                        10 [Boolean Constant: true] 
            4 DIRECTEXPRESSION
              5 IdentifierAccess
                6 [ID: mygame] 
                6 SELECTOR
                  7 [ID: changeturn] 
                  7 SelectorArguments
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: BoardBase] 
              5 SELECTOR
                6 [ID: printBoard] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: mygame] 
                    8 SELECTOR
                      9 [ID: getRow0] 
                      9 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: mygame] 
                    8 SELECTOR
                      9 [ID: getRow1] 
                      9 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: mygame] 
                    8 SELECTOR
                      9 [ID: getRow2] 
                      9 SelectorArguments
          3 Attribution
            4 Target
              5 [ID: win] 
            4 IdentifierAccess
              5 [ID: mygame] 
              5 SELECTOR
                6 [ID: winner] 
                6 SelectorArguments
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: BoardBase] 
              5 SELECTOR
                6 [ID: printWinner] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: win] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/TicTacToe.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int""[""]"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int""[""]"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int""[""]"")""boolean"
    WARNING duplicate import on line 2

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int""[""]"",""int""[""]"",""int""[""]"")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int""[""]"",""int""[""]"",""int""[""]"")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Symbol 
    	Name printWinner
    	Type 2
    	Signature printWinner(int)

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"")""int""[""]"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Symbol 
    	Name printWinner
    	Type 2
    	Signature printWinner(int)

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"")""int""[""]"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Symbol 
    	Name printWinner
    	Type 2
    	Signature printWinner(int)

    Symbol 
    	Name playerTurn
    	Type 2
    	Signature playerTurn(int)

    Structures (0): 



    "import""static"<ID>"."<ID>"("")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Symbol 
    	Name printWinner
    	Type 2
    	Signature printWinner(int)

    Symbol 
    	Name playerTurn
    	Type 2
    	Signature playerTurn(int)

    Structures (0): 



    "import""static"<ID>"."<ID>"("")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Symbol 
    	Name printWinner
    	Type 2
    	Signature printWinner(int)

    Symbol 
    	Name playerTurn
    	Type 2
    	Signature playerTurn(int)

    Symbol 
    	Name wrongMove
    	Type 2
    	Signature wrongMove()

    Structures (0): 



    "import""static"<ID>"."<ID>"("")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Symbol 
    	Name printWinner
    	Type 2
    	Signature printWinner(int)

    Symbol 
    	Name playerTurn
    	Type 2
    	Signature playerTurn(int)

    Symbol 
    	Name wrongMove
    	Type 2
    	Signature wrongMove()

    Structures (0): 



    "import""static"<ID>"."<ID>"("")"


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Symbol 
    	Name TicTacToe
    	Type 1
    	Signature TicTacToe()

    Symbol 
    	Name TicTacToe
    	Type 0
    	Signature TicTacToe

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name BoardBase
    	Type 0
    	Signature BoardBase

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name BoardBase
    	Type 1
    	Signature BoardBase()

    Symbol 
    	Name sameArray
    	Type 2
    	Signature sameArray(int[])

    Symbol 
    	Name printBoard
    	Type 2
    	Signature printBoard(int[],int[],int[])

    Symbol 
    	Name printWinner
    	Type 2
    	Signature printWinner(int)

    Symbol 
    	Name playerTurn
    	Type 2
    	Signature playerTurn(int)

    Symbol 
    	Name wrongMove
    	Type 2
    	Signature wrongMove()

    Symbol 
    	Name placeTaken
    	Type 2
    	Signature placeTaken()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name TicTacToe
    	Type 0
    	Signature TicTacToe

    Nmb children 11
    Symbol Table: 
    Symbol 
    	Name row0
    	Type 4
    	Signature row0

    Symbol 
    	Name row1
    	Type 4
    	Signature row1

    Symbol 
    	Name row2
    	Type 4
    	Signature row2

    Symbol 
    	Name whoseturn
    	Type 4
    	Signature whoseturn

    Symbol 
    	Name movesmade
    	Type 4
    	Signature movesmade

    Symbol 
    	Name pieces
    	Type 4
    	Signature pieces

    Symbol 
    	Name init
    	Type 1
    	Signature init()

    Symbol 
    	Name getRow0
    	Type 1
    	Signature getRow0()

    Symbol 
    	Name getRow1
    	Type 1
    	Signature getRow1()

    Symbol 
    	Name getRow2
    	Type 1
    	Signature getRow2()

    Symbol 
    	Name MoveRow
    	Type 1
    	Signature MoveRow(int[],int)

    Symbol 
    	Name Move
    	Type 1
    	Signature Move(int,int)

    Symbol 
    	Name inbounds
    	Type 1
    	Signature inbounds(int,int)

    Symbol 
    	Name changeturn
    	Type 1
    	Signature changeturn()

    Symbol 
    	Name getCurrentPlayer
    	Type 1
    	Signature getCurrentPlayer()

    Symbol 
    	Name winner
    	Type 1
    	Signature winner()

    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name init
    	Type 1
    	Signature init()

    Nmb children 0
    Symbol Table: 
    Structures (9): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol row0 return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol row1 return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol row2 return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol pieces return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol pieces return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol pieces return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol whoseturn return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol movesmade return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name getRow0
    	Type 1
    	Signature getRow0()

    Nmb children 0
    Symbol Table: 
    Structures (1): 
       Structure Type: Expression: RETURN Symbol row0 return type int[]
        Structure Type: Expression: ACCESS Symbol row0 return type int[]



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name getRow1
    	Type 1
    	Signature getRow1()

    Nmb children 0
    Symbol Table: 
    Structures (1): 
       Structure Type: Expression: RETURN Symbol row1 return type int[]
        Structure Type: Expression: ACCESS Symbol row1 return type int[]



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name getRow2
    	Type 1
    	Signature getRow2()

    Nmb children 0
    Symbol Table: 
    Structures (1): 
       Structure Type: Expression: RETURN Symbol row2 return type int[]
        Structure Type: Expression: ACCESS Symbol row2 return type int[]



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name MoveRow
    	Type 1
    	Signature MoveRow(int[],int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name row
    	Type 4
    	Signature row

    Symbol 
    	Name column
    	Type 4
    	Signature column

    Symbol 
    	Name moved
    	Type 4
    	Signature moved

    Structures (2): 
       Structure Type: IF
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol column return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol moved return type boolean
         Structure Type: Expression: CONSTANT return type boolean
       Structure Type: Expression: RETURN Symbol moved return type boolean
        Structure Type: Expression: ACCESS Symbol moved return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name Move
    	Type 1
    	Signature Move(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name row
    	Type 4
    	Signature row

    Symbol 
    	Name column
    	Type 4
    	Signature column

    Symbol 
    	Name mov
    	Type 4
    	Signature mov

    Structures (2): 
       Structure Type: IF
        Structure Type: Expression: NEGATE return type boolean
         Structure Type: Expression: AND return type boolean
          Structure Type: Expression: LESSTHAN return type boolean
           Structure Type: Expression: ACCESS Symbol row return type int
           Structure Type: Expression: CONSTANT return type int
          Structure Type: Expression: NEGATE return type boolean
           Structure Type: Expression: LESSTHAN return type boolean
            Structure Type: Expression: CONSTANT return type int
            Structure Type: Expression: ACCESS Symbol row return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol mov return type boolean
         Structure Type: Expression: ACCESS return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol MoveRow(int[],int) return type boolean
       Structure Type: Expression: RETURN Symbol mov return type boolean
        Structure Type: Expression: ACCESS Symbol mov return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name inbounds
    	Type 1
    	Signature inbounds(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name row
    	Type 4
    	Signature row

    Symbol 
    	Name column
    	Type 4
    	Signature column

    Symbol 
    	Name in
    	Type 4
    	Signature in

    Structures (2): 
       Structure Type: IF
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol row return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol in return type boolean
         Structure Type: Expression: CONSTANT return type boolean
       Structure Type: Expression: RETURN Symbol in return type boolean
        Structure Type: Expression: ACCESS Symbol in return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name changeturn
    	Type 1
    	Signature changeturn()

    Nmb children 0
    Symbol Table: 
    Structures (2): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol whoseturn return type int
        Structure Type: Expression: SUB return type int
         Structure Type: Expression: CONSTANT return type int
         Structure Type: Expression: ACCESS Symbol whoseturn return type int
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name getCurrentPlayer
    	Type 1
    	Signature getCurrentPlayer()

    Nmb children 0
    Symbol Table: 
    Structures (1): 
       Structure Type: Expression: RETURN return type int
        Structure Type: Expression: ADD return type int
         Structure Type: Expression: ACCESS Symbol whoseturn return type int
         Structure Type: Expression: CONSTANT return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name winner
    	Type 1
    	Signature winner()

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name array
    	Type 4
    	Signature array

    Symbol 
    	Name winner
    	Type 4
    	Signature winner

    Symbol 
    	Name i
    	Type 3
    	Signature i

    Structures (5): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol winner return type int
        Structure Type: Expression: SUB return type int
         Structure Type: Expression: CONSTANT return type int
         Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol array return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: IF
        Structure Type: Expression: AND return type boolean
         Structure Type: Expression: ACCESS Symbol BoardBase return type boolean
          Structure Type: Expression: METHOD ACCESS Symbol sameArray(int[]) return type boolean
         Structure Type: Expression: LESSTHAN return type boolean
          Structure Type: Expression: CONSTANT return type int
          Structure Type: Expression: ACCESS Symbol row0 return type int
           Structure Type: Expression: ARRAY ACCESS return type int
            Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol winner return type int
         Structure Type: Expression: ACCESS Symbol row0 return type int
          Structure Type: Expression: ARRAY ACCESS return type int
           Structure Type: Expression: CONSTANT return type int
       Structure Type: IF
        Structure Type: Expression: AND return type boolean
         Structure Type: Expression: LESSTHAN return type boolean
          Structure Type: Expression: ACCESS Symbol winner return type int
          Structure Type: Expression: CONSTANT return type int
         Structure Type: Expression: NEGATE return type boolean
          Structure Type: Expression: AND return type boolean
           Structure Type: Expression: LESSTHAN return type boolean
            Structure Type: Expression: ACCESS Symbol movesmade return type int
            Structure Type: Expression: CONSTANT return type int
           Structure Type: Expression: NEGATE return type boolean
            Structure Type: Expression: LESSTHAN return type boolean
             Structure Type: Expression: CONSTANT return type int
             Structure Type: Expression: ACCESS Symbol movesmade return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol winner return type int
         Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN Symbol winner return type int
        Structure Type: Expression: ACCESS Symbol winner return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name args
    	Type 4
    	Signature args

    Symbol 
    	Name mygame
    	Type 4
    	Signature mygame

    Symbol 
    	Name win
    	Type 4
    	Signature win

    Symbol 
    	Name done
    	Type 4
    	Signature done

    Symbol 
    	Name move
    	Type 4
    	Signature move

    Symbol 
    	Name player
    	Type 4
    	Signature player

    Structures (6): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol mygame return type TicTacToe
        Structure Type: Expression: METHOD ACCESS Symbol TicTacToe() return type TicTacToe
         Structure Type: Expression: WARNING Unset expression return type TicTacToe
       Structure Type: Expression: ACCESS Symbol TicTacToe return type boolean
        Structure Type: Expression: METHOD ACCESS Symbol init() return type boolean
       Structure Type: WHILE
        Structure Type: Expression: NEGATE return type boolean
         Structure Type: Expression: AND return type boolean
          Structure Type: Expression: LESSTHAN return type boolean
           Structure Type: Expression: ACCESS Symbol TicTacToe return type int
            Structure Type: Expression: METHOD ACCESS Symbol winner() return type int
           Structure Type: Expression: SUB return type int
            Structure Type: Expression: CONSTANT return type int
            Structure Type: Expression: CONSTANT return type int
          Structure Type: Expression: NEGATE return type boolean
           Structure Type: Expression: LESSTHAN return type boolean
            Structure Type: Expression: SUB return type int
             Structure Type: Expression: CONSTANT return type int
             Structure Type: Expression: CONSTANT return type int
            Structure Type: Expression: ACCESS Symbol TicTacToe return type int
             Structure Type: Expression: METHOD ACCESS Symbol winner() return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol done return type boolean
         Structure Type: Expression: CONSTANT return type boolean
        Structure Type: WHILE
         Structure Type: Expression: NEGATE return type boolean
          Structure Type: Expression: ACCESS Symbol done return type boolean
         Structure Type: Expression: ACCESS Symbol BoardBase return type void
          Structure Type: Expression: METHOD ACCESS Symbol printBoard(int[],int[],int[]) return type void
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol player return type int
          Structure Type: Expression: ACCESS Symbol TicTacToe return type int
           Structure Type: Expression: METHOD ACCESS Symbol getCurrentPlayer() return type int
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol move return type int[]
          Structure Type: Expression: ACCESS Symbol BoardBase return type int[]
           Structure Type: Expression: METHOD ACCESS Symbol playerTurn(int) return type int[]
         Structure Type: IF
          Structure Type: Expression: NEGATE return type boolean
           Structure Type: Expression: ACCESS Symbol TicTacToe return type boolean
            Structure Type: Expression: METHOD ACCESS Symbol inbounds(int,int) return type boolean
          Structure Type: Expression: ACCESS Symbol BoardBase return type void
           Structure Type: Expression: METHOD ACCESS Symbol wrongMove() return type void
        Structure Type: Expression: ACCESS Symbol TicTacToe return type boolean
         Structure Type: Expression: METHOD ACCESS Symbol changeturn() return type boolean
       Structure Type: Expression: ACCESS Symbol BoardBase return type void
        Structure Type: Expression: METHOD ACCESS Symbol printBoard(int[],int[],int[]) return type void
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol win return type int
        Structure Type: Expression: ACCESS Symbol TicTacToe return type int
         Structure Type: Expression: METHOD ACCESS Symbol winner() return type int
       Structure Type: Expression: ACCESS Symbol BoardBase return type void
        Structure Type: Expression: METHOD ACCESS Symbol printWinner(int) return type void





ParserTest > testfuncNotFound STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/funcNotFound.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/funcNotFound.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: a] 
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: io] 
              5 SELECTOR
                6 [ID: println] 
                6 SelectorArguments
                  7 [Int Constant: 10] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: foo] 
            4 [Type: boolean] 
            4 [ID: a] 
          3 DIRECTEXPRESSION
            4 THIS
              5 SELECTOR
                6 [ID: bar] 
                6 SelectorArguments
          3 RETURN
            4 [Int Constant: 1] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/funcNotFound.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Symbol 
    	Name foo
    	Type 1
    	Signature foo(boolean)

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name foo
    	Type 1
    	Signature foo(boolean)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Structures (0): 



    <ID>"."<ID>"("<INTEGER>
    		ERROR Undeclared entity
    UndeclaredException: Undefined io
    On line 7
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testfuncNotFound STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testfuncNotFound(ParserTest.java:127)
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
    	at Main.main(Main.java:65)
    	... 53 more

ParserTest > testarr_size_not_int STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/arr_size_not_int.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/arr_size_not_int.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: a] 
          3 Attribution
            4 Target
              5 [ID: a] 
            4 New
              5 [Boolean Constant: true] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/arr_size_not_int.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Structures (0): 



    "int""[""]"<ID>
    		ERROR Duplicate detected
    DuplicateException: Variable already present
    On line 7
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testarr_size_not_int STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testarr_size_not_int(ParserTest.java:112)
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
    	at Main.main(Main.java:61)
    	... 53 more

ParserTest > testCompleteWhileTest STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/CompleteWhileTest.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/CompleteWhileTest.jmm
    Parser starting
    COULD NOT PARSE WHILE
    COULD NOT PARSE WHILE
    COULD NOT PARSE WHILE
    UNEXPECTED Parsing Exception
    PARSING ERROR
    Unexpected symbol encountered: c on line 28, column 13
    Was expecting one of the following symbols:
    [ "public"  ]


ParserTest > testCompleteWhileTest STANDARD_ERROR
    java.lang.Exception: Parser failure
    	at JMMParser.parse(JMMParser.java:25)
    	at Main.main(Main.java:49)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testCompleteWhileTest(ParserTest.java:167)
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

ParserTest > testCompleteWhileTest STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testCompleteWhileTest STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testCompleteWhileTest(ParserTest.java:167)
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
    Caused by: java.lang.RuntimeException: Syntatical error
    	at Main.main(Main.java:53)
    	... 53 more

ParserTest > testLengthError STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/LengthError.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/LengthError.jmm
    Parser starting
    COULD NOT PARSE WHILE
    PARSING ERROR
    Unexpected symbol encountered: length on line 3, column 8
    Was expecting one of the following symbols:
    [ <INTEGER>, "new", "(", "!", "this", <ID>  ]


ParserTest > testLengthError STANDARD_ERROR
    java.lang.Exception: Parser failure
    	at JMMParser.parse(JMMParser.java:35)
    	at Main.main(Main.java:49)
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testLengthError(ParserTest.java:172)
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

ParserTest > testLengthError STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testLengthError STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
    	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testLengthError(ParserTest.java:172)
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
    Caused by: java.lang.RuntimeException: Syntatical error
    	at Main.main(Main.java:53)
    	... 53 more

ParserTest > testWhileAndIF STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/WhileAndIF.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/WhileAndIF.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: println] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ClassDeclaration
        2 ClassHead
          3 [ID: WhileAndIf] 
        2 MainMethod
          3 [ID: args] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: a] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: b] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: c] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: d] 
          3 Attribution
            4 Target
              5 [ID: a] 
            4 [Int Constant: 20] 
          3 Attribution
            4 Target
              5 [ID: b] 
            4 [Int Constant: 10] 
          3 Attribution
            4 Target
              5 [ID: d] 
            4 New
              5 [Int Constant: 10] 
          3 IfStructure
            4 IfHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: a] 
                6 IdentifierAccess
                  7 [ID: b] 
            4 Attribution
              5 Target
                6 [ID: c] 
              5 SUB
                6 IdentifierAccess
                  7 [ID: a] 
                6 [Int Constant: 1] 
            4 ElseStructure
              5 Attribution
                6 Target
                  7 [ID: c] 
                6 SUB
                  7 IdentifierAccess
                    8 [ID: b] 
                  7 [Int Constant: 1] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 SUB
                  7 [Int Constant: 0] 
                  7 [Int Constant: 1] 
                6 IdentifierAccess
                  7 [ID: c] 
            4 Attribution
              5 Target
                6 [ID: d] 
                6 ArrayAccess
                  7 IdentifierAccess
                    8 [ID: c] 
              5 SUB
                6 IdentifierAccess
                  7 [ID: a] 
                6 IdentifierAccess
                  7 [ID: b] 
            4 Attribution
              5 Target
                6 [ID: c] 
              5 SUB
                6 IdentifierAccess
                  7 [ID: c] 
                6 [Int Constant: 1] 
            4 Attribution
              5 Target
                6 [ID: a] 
              5 SUB
                6 IdentifierAccess
                  7 [ID: a] 
                6 [Int Constant: 1] 
            4 Attribution
              5 Target
                6 [ID: b] 
              5 SUB
                6 IdentifierAccess
                  7 [ID: b] 
                6 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 0] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: c] 
                6 IdentifierAccess
                  7 [ID: d] 
                  7 SELECTOR
                    8 LENGTH
            4 DIRECTEXPRESSION
              5 IdentifierAccess
                6 [ID: io] 
                6 SELECTOR
                  7 [ID: println] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: d] 
                      9 ArrayAccess
                        10 IdentifierAccess
                          11 [ID: c] 
            4 Attribution
              5 Target
                6 [ID: c] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: c] 
                6 [Int Constant: 1] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/WhileAndIF.jmm


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Symbol 
    	Name WhileAndIf
    	Type 1
    	Signature WhileAndIf()

    Symbol 
    	Name WhileAndIf
    	Type 0
    	Signature WhileAndIf

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name println
    	Type 2
    	Signature println(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name WhileAndIf
    	Type 0
    	Signature WhileAndIf

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name args
    	Type 4
    	Signature args

    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Symbol 
    	Name c
    	Type 4
    	Signature c

    Symbol 
    	Name d
    	Type 4
    	Signature d

    Structures (7): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol a return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol b return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol d return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: IF
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol a return type int
         Structure Type: Expression: ACCESS Symbol b return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol c return type int
         Structure Type: Expression: SUB return type int
          Structure Type: Expression: ACCESS Symbol a return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: SUB return type int
          Structure Type: Expression: CONSTANT return type int
          Structure Type: Expression: CONSTANT return type int
         Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol d return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: ACCESS Symbol c return type int
         Structure Type: Expression: SUB return type int
          Structure Type: Expression: ACCESS Symbol a return type int
          Structure Type: Expression: ACCESS Symbol b return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol c return type int
         Structure Type: Expression: SUB return type int
          Structure Type: Expression: ACCESS Symbol c return type int
          Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol a return type int
         Structure Type: Expression: SUB return type int
          Structure Type: Expression: ACCESS Symbol a return type int
          Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol b return type int
         Structure Type: Expression: SUB return type int
          Structure Type: Expression: ACCESS Symbol b return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol c return type int
         Structure Type: Expression: ACCESS Symbol d return type int
          Structure Type: Expression: LENGTH return type int
        Structure Type: Expression: ACCESS Symbol io return type void
         Structure Type: Expression: METHOD ACCESS Symbol println(int) return type void
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol c return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol c return type int
          Structure Type: Expression: CONSTANT return type int





ParserTest > testFindMaximum STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/FindMaximum.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/FindMaximum.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: ioPlus] 
        2 [ID: printResult] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ClassDeclaration
        2 ClassHead
          3 [ID: FindMaximum] 
        2 VarDeclaration
          3 [Type: int[]] 
          3 [ID: test_arr] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: find_maximum] 
            4 [Type: int[]] 
            4 [ID: arr] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: maximum] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: value] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: maximum] 
            4 IdentifierAccess
              5 [ID: arr] 
              5 ArrayAccess
                6 [Int Constant: 0] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: i] 
                6 IdentifierAccess
                  7 [ID: arr] 
                  7 SELECTOR
                    8 LENGTH
            4 Attribution
              5 Target
                6 [ID: value] 
              5 IdentifierAccess
                6 [ID: arr] 
                6 ArrayAccess
                  7 IdentifierAccess
                    8 [ID: i] 
            4 IfStructure
              5 IfHead
                6 LESSTHAN
                  7 IdentifierAccess
                    8 [ID: maximum] 
                  7 IdentifierAccess
                    8 [ID: value] 
              5 Attribution
                6 Target
                  7 [ID: maximum] 
                6 IdentifierAccess
                  7 [ID: value] 
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
              5 [ID: maximum] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: build_test_arr] 
          3 Attribution
            4 Target
              5 [ID: test_arr] 
            4 New
              5 [Int Constant: 5] 
          3 Attribution
            4 Target
              5 [ID: test_arr] 
              5 ArrayAccess
                6 [Int Constant: 0] 
            4 [Int Constant: 14] 
          3 Attribution
            4 Target
              5 [ID: test_arr] 
              5 ArrayAccess
                6 [Int Constant: 1] 
            4 [Int Constant: 28] 
          3 Attribution
            4 Target
              5 [ID: test_arr] 
              5 ArrayAccess
                6 [Int Constant: 2] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: test_arr] 
              5 ArrayAccess
                6 [Int Constant: 3] 
            4 SUB
              5 [Int Constant: 0] 
              5 [Int Constant: 5] 
          3 Attribution
            4 Target
              5 [ID: test_arr] 
              5 ArrayAccess
                6 [Int Constant: 4] 
            4 [Int Constant: 12] 
          3 RETURN
            4 [Int Constant: 0] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int[]] 
            4 [ID: get_array] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: test_arr] 
        2 MainMethod
          3 [ID: args] 
          3 VarDeclaration
            4 [Type: FindMaximum] 
            4 [ID: fm] 
          3 Attribution
            4 Target
              5 [ID: fm] 
            4 New
              5 [ID: FindMaximum] 
              5 SelectorArguments
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: fm] 
              5 SELECTOR
                6 [ID: build_test_arr] 
                6 SelectorArguments
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: ioPlus] 
              5 SELECTOR
                6 [ID: printResult] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: fm] 
                    8 SELECTOR
                      9 [ID: find_maximum] 
                      9 SelectorArguments
                        10 IdentifierAccess
                          11 [ID: fm] 
                          11 SELECTOR
                            12 [ID: get_array] 
                            12 SelectorArguments
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/FindMaximum.jmm


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Symbol 
    	Name FindMaximum
    	Type 1
    	Signature FindMaximum()

    Symbol 
    	Name FindMaximum
    	Type 0
    	Signature FindMaximum

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name ioPlus
    	Type 1
    	Signature ioPlus()

    Symbol 
    	Name printResult
    	Type 2
    	Signature printResult(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name FindMaximum
    	Type 0
    	Signature FindMaximum

    Nmb children 4
    Symbol Table: 
    Symbol 
    	Name test_arr
    	Type 4
    	Signature test_arr

    Symbol 
    	Name find_maximum
    	Type 1
    	Signature find_maximum(int[])

    Symbol 
    	Name build_test_arr
    	Type 1
    	Signature build_test_arr()

    Symbol 
    	Name get_array
    	Type 1
    	Signature get_array()

    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name find_maximum
    	Type 1
    	Signature find_maximum(int[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name arr
    	Type 4
    	Signature arr

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name maximum
    	Type 4
    	Signature maximum

    Symbol 
    	Name value
    	Type 4
    	Signature value

    Structures (4): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol maximum return type int
        Structure Type: Expression: ACCESS Symbol arr return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ACCESS Symbol arr return type int
          Structure Type: Expression: LENGTH return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol value return type int
         Structure Type: Expression: ACCESS Symbol arr return type int
          Structure Type: Expression: ARRAY ACCESS return type int
           Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: IF
         Structure Type: Expression: LESSTHAN return type boolean
          Structure Type: Expression: ACCESS Symbol maximum return type int
          Structure Type: Expression: ACCESS Symbol value return type int
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol maximum return type int
          Structure Type: Expression: ACCESS Symbol value return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN Symbol maximum return type int
        Structure Type: Expression: ACCESS Symbol maximum return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name build_test_arr
    	Type 1
    	Signature build_test_arr()

    Nmb children 0
    Symbol Table: 
    Structures (7): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol test_arr return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol test_arr return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol test_arr return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol test_arr return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol test_arr return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: SUB return type int
         Structure Type: Expression: CONSTANT return type int
         Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol test_arr return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: CONSTANT return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN return type int
        Structure Type: Expression: CONSTANT return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name get_array
    	Type 1
    	Signature get_array()

    Nmb children 0
    Symbol Table: 
    Structures (1): 
       Structure Type: Expression: RETURN Symbol test_arr return type int[]
        Structure Type: Expression: ACCESS Symbol test_arr return type int[]



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name args
    	Type 4
    	Signature args

    Symbol 
    	Name fm
    	Type 4
    	Signature fm

    Structures (3): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol fm return type FindMaximum
        Structure Type: Expression: METHOD ACCESS Symbol FindMaximum() return type FindMaximum
         Structure Type: Expression: WARNING Unset expression return type FindMaximum
       Structure Type: Expression: ACCESS Symbol FindMaximum return type int
        Structure Type: Expression: METHOD ACCESS Symbol build_test_arr() return type int
       Structure Type: Expression: ACCESS Symbol ioPlus return type void
        Structure Type: Expression: METHOD ACCESS Symbol printResult(int) return type void





ParserTest > testbinop_incomp STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/binop_incomp.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/binop_incomp.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: boolean] 
            4 [ID: j] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: k] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: j] 
            4 [Boolean Constant: true] 
          3 Attribution
            4 Target
              5 [ID: k] 
            4 ADD
              5 IdentifierAccess
                6 [ID: i] 
              5 IdentifierAccess
                6 [ID: j] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/binop_incomp.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name j
    	Type 4
    	Signature j

    Symbol 
    	Name k
    	Type 4
    	Signature k

    Structures (2): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol j return type boolean
        Structure Type: Expression: CONSTANT return type boolean




    		ERROR incompatibility detected
    IncompatibleException: Incompatible types: int and boolean
    On line 12
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testbinop_incomp STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testbinop_incomp(ParserTest.java:122)
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
    	at Main.main(Main.java:69)
    	... 52 more

ParserTest > testBlowUp STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/BlowUp.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/BlowUp.jmm
    Parser starting
    COULD NOT PARSE WHILE
    UNEXPECTED Parsing Exception
    PARSING ERROR
    Unexpected symbol encountered: public on line 9, column 2
    Was expecting one of the following symbols:
    [ <EOF>  ]


ParserTest > testBlowUp STANDARD_ERROR
    java.lang.Exception: Parser failure
    	at JMMParser.parse(JMMParser.java:25)
    	at Main.main(Main.java:49)
    	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testBlowUp(ParserTest.java:162)
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

ParserTest > testBlowUp STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testBlowUp STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testBlowUp(ParserTest.java:162)
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
    Caused by: java.lang.RuntimeException: Syntatical error
    	at Main.main(Main.java:53)
    	... 52 more

ParserTest > testvarNotInit STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/varNotInit.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/varNotInit.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: VarNotInit] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: j] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: k] 
          3 Attribution
            4 Target
              5 [ID: k] 
            4 [Int Constant: 2] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 ADD
              5 IdentifierAccess
                6 [ID: j] 
              5 IdentifierAccess
                6 [ID: k] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/varNotInit.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name VarNotInit
    	Type 1
    	Signature VarNotInit()

    Symbol 
    	Name VarNotInit
    	Type 0
    	Signature VarNotInit

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name VarNotInit
    	Type 0
    	Signature VarNotInit

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name j
    	Type 3
    	Signature j

    Symbol 
    	Name k
    	Type 4
    	Signature k

    Structures (1): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol k return type int
        Structure Type: Expression: CONSTANT return type int




    Unhandled exception
    UninitializedException: Unitinialized Variable j not initialized 
    On line 11

ParserTest > testvarNotInit STANDARD_ERROR
    UninitializedException: Unitinialized Variable j not initialized 
    On line 11
    	at Analyzer.getExpression(Analyzer.java:422)
    	at Analyzer.parseArithOperation(Analyzer.java:97)
    	at Analyzer.getExpression(Analyzer.java:268)
    	at Analyzer.getAttribution(Analyzer.java:518)
    	at Analyzer.getStatement(Analyzer.java:618)
    	at Analyzer.getMethod(Analyzer.java:729)
    	at Analyzer.getClass(Analyzer.java:807)
    	at Analyzer.analyze(Analyzer.java:961)
    	at Main.main(Main.java:57)
    	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testvarNotInit(ParserTest.java:152)
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

ParserTest > testvarNotInit STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testvarNotInit STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testvarNotInit(ParserTest.java:152)
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
    	... 52 more

ParserTest > testSimple STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/Simple.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/Simple.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: println] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ClassDeclaration
        2 ClassHead
          3 [ID: Simple] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: add] 
            4 [Type: int] 
            4 [ID: a] 
            4 [Type: int] 
            4 [ID: b] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: c] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 ADD
              5 IdentifierAccess
                6 [ID: a] 
              5 IdentifierAccess
                6 [ID: b] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: c] 
        2 MainMethod
          3 [ID: args] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: a] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: b] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: c] 
          3 VarDeclaration
            4 [Type: Simple] 
            4 [ID: s] 
          3 Attribution
            4 Target
              5 [ID: a] 
            4 [Int Constant: 20] 
          3 Attribution
            4 Target
              5 [ID: b] 
            4 [Int Constant: 10] 
          3 Attribution
            4 Target
              5 [ID: s] 
            4 New
              5 [ID: Simple] 
              5 SelectorArguments
          3 Attribution
            4 Target
              5 [ID: c] 
            4 IdentifierAccess
              5 [ID: s] 
              5 SELECTOR
                6 [ID: add] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: a] 
                  7 IdentifierAccess
                    8 [ID: b] 
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: io] 
              5 SELECTOR
                6 [ID: println] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: c] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: constInstr] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: c] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 0] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 4] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 8] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 14] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 250] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 400] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 1000] 
          3 Attribution
            4 Target
              5 [ID: c] 
            4 [Int Constant: 100474650] 
          3 RETURN
            4 [Int Constant: 0] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/Simple.jmm


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Symbol 
    	Name Simple
    	Type 1
    	Signature Simple()

    Symbol 
    	Name Simple
    	Type 0
    	Signature Simple

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name println
    	Type 2
    	Signature println(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Simple
    	Type 0
    	Signature Simple

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Symbol 
    	Name constInstr
    	Type 1
    	Signature constInstr()

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Symbol 
    	Name c
    	Type 4
    	Signature c

    Structures (2): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: ADD return type int
         Structure Type: Expression: ACCESS Symbol a return type int
         Structure Type: Expression: ACCESS Symbol b return type int
       Structure Type: Expression: RETURN Symbol c return type int
        Structure Type: Expression: ACCESS Symbol c return type int



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name args
    	Type 4
    	Signature args

    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name b
    	Type 4
    	Signature b

    Symbol 
    	Name c
    	Type 4
    	Signature c

    Symbol 
    	Name s
    	Type 4
    	Signature s

    Structures (5): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol a return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol b return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol s return type Simple
        Structure Type: Expression: METHOD ACCESS Symbol Simple() return type Simple
         Structure Type: Expression: WARNING Unset expression return type Simple
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: ACCESS Symbol Simple return type int
         Structure Type: Expression: METHOD ACCESS Symbol add(int,int) return type int
       Structure Type: Expression: ACCESS Symbol io return type void
        Structure Type: Expression: METHOD ACCESS Symbol println(int) return type void



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name constInstr
    	Type 1
    	Signature constInstr()

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name c
    	Type 4
    	Signature c

    Structures (9): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol c return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN return type int
        Structure Type: Expression: CONSTANT return type int





ParserTest > testvar_lit_incomp STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_lit_incomp.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_lit_incomp.jmm
    Parser starting
    0 START
      1 ClassDeclaration
        2 ClassHead
          3 [ID: T] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 [Boolean Constant: true] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/fail/semantic/var_lit_incomp.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name T
    	Type 1
    	Signature T()

    Symbol 
    	Name T
    	Type 0
    	Signature T

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name T
    	Type 0
    	Signature T

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Structures (0): 



    <ID>"="<BOOL>
    		ERROR incompatibility detected
    IncompatibleException: int is incompatible with boolean
    On line 8
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testvar_lit_incomp STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testvar_lit_incomp(ParserTest.java:142)
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
    	at Main.main(Main.java:69)
    	... 52 more

ParserTest > testMultipleSequential STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/MultipleSequential.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/fail/syntactical/MultipleSequential.jmm
    Parser starting
    COULD NOT PARSE WHILE
    COULD NOT PARSE WHILE
    PARSING ERROR
    Unexpected symbol encountered: ) on line 3, column 12
    Was expecting one of the following symbols:
    [ <INTEGER>, "new", "(", "!", "this", <ID>  ]

    PARSING ERROR
    Unexpected symbol encountered: ) on line 5, column 12
    Was expecting one of the following symbols:
    [ <INTEGER>, "new", "(", "!", "this", <ID>  ]


ParserTest > testMultipleSequential STANDARD_ERROR
    java.lang.Exception: Parser failure
    	at JMMParser.parse(JMMParser.java:35)
    	at Main.main(Main.java:49)
    	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testMultipleSequential(ParserTest.java:182)
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

Gradle Test Executor 76 finished executing tests.

> Task :test
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

ParserTest > testMultipleSequential STANDARD_OUT
    Test failed: java.lang.reflect.InvocationTargetException

ParserTest > testMultipleSequential STANDARD_ERROR
    java.lang.reflect.InvocationTargetException
    	at sun.reflect.GeneratedMethodAccessor2.invoke(Unknown Source)
    	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
    	at java.lang.reflect.Method.invoke(Method.java:498)
    	at ParserTest.test(ParserTest.java:30)
    	at ParserTest.testMultipleSequential(ParserTest.java:182)
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
    Caused by: java.lang.RuntimeException: Syntatical error
    	at Main.main(Main.java:53)
    	... 52 more

ParserTest > testQuickSort STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/QuickSort.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/QuickSort.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: println] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ClassDeclaration
        2 ClassHead
          3 [ID: Quicksort] 
        2 MainMethod
          3 [ID: a] 
          3 VarDeclaration
            4 [Type: int[]] 
            4 [ID: L] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: Quicksort] 
            4 [ID: q] 
          3 Attribution
            4 Target
              5 [ID: L] 
            4 New
              5 [Int Constant: 10] 
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
                  7 [ID: L] 
                  7 SELECTOR
                    8 LENGTH
            4 Attribution
              5 Target
                6 [ID: L] 
                6 ArrayAccess
                  7 IdentifierAccess
                    8 [ID: i] 
              5 SUB
                6 IdentifierAccess
                  7 [ID: L] 
                  7 SELECTOR
                    8 LENGTH
                6 IdentifierAccess
                  7 [ID: i] 
            4 Attribution
              5 Target
                6 [ID: i] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: i] 
                6 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: q] 
            4 New
              5 [ID: Quicksort] 
              5 SelectorArguments
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: q] 
              5 SELECTOR
                6 [ID: quicksort] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: L] 
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: q] 
              5 SELECTOR
                6 [ID: printL] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: L] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: printL] 
            4 [Type: int[]] 
            4 [ID: L] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
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
                  7 [ID: L] 
                  7 SELECTOR
                    8 LENGTH
            4 DIRECTEXPRESSION
              5 IdentifierAccess
                6 [ID: io] 
                6 SELECTOR
                  7 [ID: println] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: L] 
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
          3 RETURN
            4 [Boolean Constant: true] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: quicksort] 
            4 [Type: int[]] 
            4 [ID: L] 
          3 RETURN
            4 THIS
              5 SELECTOR
                6 [ID: quicksort] 
                6 SelectorArguments
                  7 IdentifierAccess
                    8 [ID: L] 
                  7 [Int Constant: 0] 
                  7 SUB
                    8 IdentifierAccess
                      9 [ID: L] 
                      9 SELECTOR
                        10 LENGTH
                    8 [Int Constant: 1] 
        2 NormalMethod
          3 MethodHead
            4 [Type: boolean] 
            4 [ID: quicksort] 
            4 [Type: int[]] 
            4 [ID: L] 
            4 [Type: int] 
            4 [ID: lo] 
            4 [Type: int] 
            4 [ID: hi] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: p] 
          3 IfStructure
            4 IfHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: lo] 
                6 IdentifierAccess
                  7 [ID: hi] 
            4 Attribution
              5 Target
                6 [ID: p] 
              5 THIS
                6 SELECTOR
                  7 [ID: partition] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: L] 
                    8 IdentifierAccess
                      9 [ID: lo] 
                    8 IdentifierAccess
                      9 [ID: hi] 
            4 DIRECTEXPRESSION
              5 THIS
                6 SELECTOR
                  7 [ID: quicksort] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: L] 
                    8 IdentifierAccess
                      9 [ID: lo] 
                    8 SUB
                      9 IdentifierAccess
                        10 [ID: p] 
                      9 [Int Constant: 1] 
            4 DIRECTEXPRESSION
              5 THIS
                6 SELECTOR
                  7 [ID: quicksort] 
                  7 SelectorArguments
                    8 IdentifierAccess
                      9 [ID: L] 
                    8 ADD
                      9 IdentifierAccess
                        10 [ID: p] 
                      9 [Int Constant: 1] 
                    8 IdentifierAccess
                      9 [ID: hi] 
            4 ElseStructure
          3 RETURN
            4 [Boolean Constant: true] 
        2 NormalMethod
          3 MethodHead
            4 [Type: int] 
            4 [ID: partition] 
            4 [Type: int[]] 
            4 [ID: L] 
            4 [Type: int] 
            4 [ID: lo] 
            4 [Type: int] 
            4 [ID: hi] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: p] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: i] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: j] 
          3 VarDeclaration
            4 [Type: int] 
            4 [ID: tmp] 
          3 Attribution
            4 Target
              5 [ID: p] 
            4 IdentifierAccess
              5 [ID: L] 
              5 ArrayAccess
                6 IdentifierAccess
                  7 [ID: hi] 
          3 Attribution
            4 Target
              5 [ID: i] 
            4 IdentifierAccess
              5 [ID: lo] 
          3 Attribution
            4 Target
              5 [ID: j] 
            4 IdentifierAccess
              5 [ID: lo] 
          3 WhileStructure
            4 WhileHead
              5 LESSTHAN
                6 IdentifierAccess
                  7 [ID: j] 
                6 IdentifierAccess
                  7 [ID: hi] 
            4 IfStructure
              5 IfHead
                6 LESSTHAN
                  7 IdentifierAccess
                    8 [ID: L] 
                    8 ArrayAccess
                      9 IdentifierAccess
                        10 [ID: j] 
                  7 IdentifierAccess
                    8 [ID: p] 
              5 Attribution
                6 Target
                  7 [ID: tmp] 
                6 IdentifierAccess
                  7 [ID: L] 
                  7 ArrayAccess
                    8 IdentifierAccess
                      9 [ID: i] 
              5 Attribution
                6 Target
                  7 [ID: L] 
                  7 ArrayAccess
                    8 IdentifierAccess
                      9 [ID: i] 
                6 IdentifierAccess
                  7 [ID: L] 
                  7 ArrayAccess
                    8 IdentifierAccess
                      9 [ID: j] 
              5 Attribution
                6 Target
                  7 [ID: L] 
                  7 ArrayAccess
                    8 IdentifierAccess
                      9 [ID: j] 
                6 IdentifierAccess
                  7 [ID: tmp] 
              5 Attribution
                6 Target
                  7 [ID: i] 
                6 ADD
                  7 IdentifierAccess
                    8 [ID: i] 
                  7 [Int Constant: 1] 
              5 ElseStructure
            4 Attribution
              5 Target
                6 [ID: j] 
              5 ADD
                6 IdentifierAccess
                  7 [ID: j] 
                6 [Int Constant: 1] 
          3 Attribution
            4 Target
              5 [ID: tmp] 
            4 IdentifierAccess
              5 [ID: L] 
              5 ArrayAccess
                6 IdentifierAccess
                  7 [ID: i] 
          3 Attribution
            4 Target
              5 [ID: L] 
              5 ArrayAccess
                6 IdentifierAccess
                  7 [ID: i] 
            4 IdentifierAccess
              5 [ID: L] 
              5 ArrayAccess
                6 IdentifierAccess
                  7 [ID: hi] 
          3 Attribution
            4 Target
              5 [ID: L] 
              5 ArrayAccess
                6 IdentifierAccess
                  7 [ID: hi] 
            4 IdentifierAccess
              5 [ID: tmp] 
          3 RETURN
            4 IdentifierAccess
              5 [ID: i] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/QuickSort.jmm


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Symbol 
    	Name Quicksort
    	Type 1
    	Signature Quicksort()

    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name println
    	Type 2
    	Signature println(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Quicksort
    	Type 0
    	Signature Quicksort

    Nmb children 5
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Symbol 
    	Name printL
    	Type 1
    	Signature printL(int[])

    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[])

    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[],int,int)

    Symbol 
    	Name partition
    	Type 1
    	Signature partition(int[],int,int)

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name a
    	Type 4
    	Signature a

    Symbol 
    	Name L
    	Type 4
    	Signature L

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name q
    	Type 4
    	Signature q

    Structures (6): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol L return type int[]
        Structure Type: Expression: INT ARRAY return type int[]
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ACCESS Symbol L return type int
          Structure Type: Expression: LENGTH return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol L return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: SUB return type int
          Structure Type: Expression: ACCESS Symbol L return type int
           Structure Type: Expression: LENGTH return type int
          Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol q return type Quicksort
        Structure Type: Expression: METHOD ACCESS Symbol Quicksort() return type Quicksort
         Structure Type: Expression: WARNING Unset expression return type Quicksort
       Structure Type: Expression: ACCESS Symbol Quicksort return type boolean
        Structure Type: Expression: METHOD ACCESS Symbol quicksort(int[]) return type boolean
       Structure Type: Expression: ACCESS Symbol Quicksort return type boolean
        Structure Type: Expression: METHOD ACCESS Symbol printL(int[]) return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name printL
    	Type 1
    	Signature printL(int[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name L
    	Type 4
    	Signature L

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Structures (3): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: CONSTANT return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ACCESS Symbol L return type int
          Structure Type: Expression: LENGTH return type int
        Structure Type: Expression: ACCESS Symbol io return type void
         Structure Type: Expression: METHOD ACCESS Symbol println(int) return type void
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name L
    	Type 4
    	Signature L

    Structures (1): 
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: ACCESS return type boolean
         Structure Type: Expression: METHOD ACCESS Symbol quicksort(int[],int,int) return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name quicksort
    	Type 1
    	Signature quicksort(int[],int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name L
    	Type 4
    	Signature L

    Symbol 
    	Name lo
    	Type 4
    	Signature lo

    Symbol 
    	Name hi
    	Type 4
    	Signature hi

    Symbol 
    	Name p
    	Type 4
    	Signature p

    Structures (2): 
       Structure Type: IF
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol lo return type int
         Structure Type: Expression: ACCESS Symbol hi return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol p return type int
         Structure Type: Expression: ACCESS return type int
          Structure Type: Expression: METHOD ACCESS Symbol partition(int[],int,int) return type int
        Structure Type: Expression: ACCESS return type boolean
         Structure Type: Expression: METHOD ACCESS Symbol quicksort(int[],int,int) return type boolean
        Structure Type: Expression: ACCESS return type boolean
         Structure Type: Expression: METHOD ACCESS Symbol quicksort(int[],int,int) return type boolean
       Structure Type: Expression: RETURN return type boolean
        Structure Type: Expression: CONSTANT return type boolean



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name partition
    	Type 1
    	Signature partition(int[],int,int)

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name L
    	Type 4
    	Signature L

    Symbol 
    	Name lo
    	Type 4
    	Signature lo

    Symbol 
    	Name hi
    	Type 4
    	Signature hi

    Symbol 
    	Name p
    	Type 4
    	Signature p

    Symbol 
    	Name i
    	Type 4
    	Signature i

    Symbol 
    	Name j
    	Type 4
    	Signature j

    Symbol 
    	Name tmp
    	Type 4
    	Signature tmp

    Structures (8): 
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol p return type int
        Structure Type: Expression: ACCESS Symbol L return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: ACCESS Symbol hi return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: ACCESS Symbol lo return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol j return type int
        Structure Type: Expression: ACCESS Symbol lo return type int
       Structure Type: WHILE
        Structure Type: Expression: LESSTHAN return type boolean
         Structure Type: Expression: ACCESS Symbol j return type int
         Structure Type: Expression: ACCESS Symbol hi return type int
        Structure Type: IF
         Structure Type: Expression: LESSTHAN return type boolean
          Structure Type: Expression: ACCESS Symbol L return type int
           Structure Type: Expression: ARRAY ACCESS return type int
            Structure Type: Expression: ACCESS Symbol j return type int
          Structure Type: Expression: ACCESS Symbol p return type int
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol tmp return type int
          Structure Type: Expression: ACCESS Symbol L return type int
           Structure Type: Expression: ARRAY ACCESS return type int
            Structure Type: Expression: ACCESS Symbol i return type int
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol L return type int
          Structure Type: Expression: ARRAY ACCESS return type int
           Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: ACCESS Symbol L return type int
           Structure Type: Expression: ARRAY ACCESS return type int
            Structure Type: Expression: ACCESS Symbol j return type int
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol L return type int
          Structure Type: Expression: ARRAY ACCESS return type int
           Structure Type: Expression: ACCESS Symbol j return type int
          Structure Type: Expression: ACCESS Symbol tmp return type int
         Structure Type: ATTRIBUTION
          Structure Type: Expression: ACCESS Symbol i return type int
          Structure Type: Expression: ADD return type int
           Structure Type: Expression: ACCESS Symbol i return type int
           Structure Type: Expression: CONSTANT return type int
        Structure Type: ATTRIBUTION
         Structure Type: Expression: ACCESS Symbol j return type int
         Structure Type: Expression: ADD return type int
          Structure Type: Expression: ACCESS Symbol j return type int
          Structure Type: Expression: CONSTANT return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol tmp return type int
        Structure Type: Expression: ACCESS Symbol L return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: ACCESS Symbol i return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol L return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: ACCESS Symbol i return type int
        Structure Type: Expression: ACCESS Symbol L return type int
         Structure Type: Expression: ARRAY ACCESS return type int
          Structure Type: Expression: ACCESS Symbol hi return type int
       Structure Type: ATTRIBUTION
        Structure Type: Expression: ACCESS Symbol L return type int
        Structure Type: Expression: ARRAY ACCESS return type int
         Structure Type: Expression: ACCESS Symbol hi return type int
        Structure Type: Expression: ACCESS Symbol tmp return type int
       Structure Type: Expression: RETURN Symbol i return type int
        Structure Type: Expression: ACCESS Symbol i return type int





ParserTest > testHelloWorld STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/HelloWorld.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/HelloWorld.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 STATIC
        2 [ID: ioPlus] 
        2 [ID: printHelloWorld] 
        2 IMPORTMETHOD
      1 ClassDeclaration
        2 ClassHead
          3 [ID: HelloWorld] 
        2 MainMethod
          3 [ID: args] 
          3 DIRECTEXPRESSION
            4 IdentifierAccess
              5 [ID: ioPlus] 
              5 SELECTOR
                6 [ID: printHelloWorld] 
                6 SelectorArguments
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/HelloWorld.jmm


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Symbol 
    	Name HelloWorld
    	Type 1
    	Signature HelloWorld()

    Symbol 
    	Name HelloWorld
    	Type 0
    	Signature HelloWorld

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name ioPlus
    	Type 0
    	Signature ioPlus

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name ioPlus
    	Type 1
    	Signature ioPlus()

    Symbol 
    	Name printHelloWorld
    	Type 2
    	Signature printHelloWorld()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name HelloWorld
    	Type 0
    	Signature HelloWorld

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Structures (0): 



    Node Depth 2
    Node Symbol: 
    Symbol 
    	Name main
    	Type 2
    	Signature main(String[])

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name args
    	Type 4
    	Signature args

    Structures (1): 
       Structure Type: Expression: ACCESS Symbol ioPlus return type void
        Structure Type: Expression: METHOD ACCESS Symbol printHelloWorld() return type void





ImportTest > testImports STANDARD_OUT
    Copied stream to file '/tmp/comp_jmm_test_bruno/fixtures/public/ImportStressTest.jmm'.
    Parsing file /tmp/comp_jmm_test_bruno/fixtures/public/ImportStressTest.jmm
    Parser starting
    0 START
      1 ImportDeclaration
        2 [ID: Map] 
      1 ImportDeclaration
        2 [ID: Map] 
        2 [ID: put] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 [Type: int] 
      1 ImportDeclaration
        2 [ID: Map] 
        2 [ID: get] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 RETURN
          3 [Type: int] 
      1 ImportDeclaration
        2 [ID: Map] 
        2 [ID: clear] 
        2 IMPORTMETHOD
      1 ImportDeclaration
        2 [ID: Map] 
        2 [ID: print] 
        2 IMPORTMETHOD
      1 ImportDeclaration
        2 [ID: Map] 
        2 [ID: contains] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 RETURN
          3 [Type: boolean] 
      1 ImportDeclaration
        2 [ID: Map] 
        2 [ID: remove] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 RETURN
          3 [Type: boolean] 
      1 ImportDeclaration
        2 [ID: List] 
      1 ImportDeclaration
        2 [ID: List] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ImportDeclaration
        2 [ID: List] 
        2 [ID: add] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ImportDeclaration
        2 [ID: List] 
        2 [ID: add] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 [Type: int] 
      1 ImportDeclaration
        2 [ID: List] 
        2 [ID: contains] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 RETURN
          3 [Type: boolean] 
      1 ImportDeclaration
        2 [ID: List] 
        2 [ID: remove] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 RETURN
          3 [Type: boolean] 
      1 ImportDeclaration
        2 [ID: List] 
        2 [ID: size] 
        2 IMPORTMETHOD
        2 RETURN
          3 [Type: int] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: println] 
        2 IMPORTMETHOD
        2 [Type: int] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: println] 
        2 IMPORTMETHOD
        2 [Type: int] 
        2 [Type: int] 
      1 ImportDeclaration
        2 STATIC
        2 [ID: io] 
        2 [ID: readln] 
        2 IMPORTMETHOD
        2 RETURN
          3 [Type: int] 
      1 ClassDeclaration
        2 ClassHead
          3 [ID: ImportStressTest] 
    Analyzer starting on /tmp/comp_jmm_test_bruno/fixtures/public/ImportStressTest.jmm

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Structures (0): 



    "import"<ID>"."<ID>"(""int"",""int"")"
    WARNING, variable already available in scope: "Map()"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""int"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""int"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Structures (0): 



    "import"<ID>"."<ID>"("")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Structures (0): 



    "import"<ID>"."<ID>"("")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Structures (0): 



    "import"<ID>"."<ID>"("")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Structures (0): 



    "import"<ID>"."<ID>"("")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 1
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Structures (0): 



    "import"<ID>"(""int"")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Structures (0): 



    "import"<ID>"."<ID>"(""int"")"
    WARNING, variable already available in scope: "List()"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"",""int"")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"",""int"")"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Structures (0): 



    "import"<ID>"."<ID>"(""int"")""boolean"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    "import"<ID>"."<ID>"("")""int"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 2
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    "import"<ID>"."<ID>"("")""int"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Symbol 
    	Name io
    	Type 0
    	Signature io

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Symbol 
    	Name size
    	Type 1
    	Signature size()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name println
    	Type 2
    	Signature println(int)

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"",""int"")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Symbol 
    	Name io
    	Type 0
    	Signature io

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Symbol 
    	Name size
    	Type 1
    	Signature size()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name println
    	Type 2
    	Signature println(int)

    Structures (0): 



    "import""static"<ID>"."<ID>"(""int"",""int"")""void"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Symbol 
    	Name io
    	Type 0
    	Signature io

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Symbol 
    	Name size
    	Type 1
    	Signature size()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name println
    	Type 2
    	Signature println(int)

    Symbol 
    	Name println
    	Type 2
    	Signature println(int,int)

    Structures (0): 



    "import""static"<ID>"."<ID>"("")""int"

    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 3
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Symbol 
    	Name io
    	Type 0
    	Signature io

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Symbol 
    	Name size
    	Type 1
    	Signature size()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name println
    	Type 2
    	Signature println(int)

    Symbol 
    	Name println
    	Type 2
    	Signature println(int,int)

    Structures (0): 



    "import""static"<ID>"."<ID>"("")""int"
    WARNING empty classImportStressTest


    Node Depth 0
    Node Symbol: 
    Symbol 
    	Name root
    	Type 5
    	Signature null

    Nmb children 4
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name List
    	Type 0
    	Signature List

    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name List
    	Type 1
    	Signature List(int)

    Symbol 
    	Name io
    	Type 0
    	Signature io

    Symbol 
    	Name ImportStressTest
    	Type 1
    	Signature ImportStressTest()

    Symbol 
    	Name ImportStressTest
    	Type 0
    	Signature ImportStressTest

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name Map
    	Type 0
    	Signature Map

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name Map
    	Type 1
    	Signature Map()

    Symbol 
    	Name put
    	Type 1
    	Signature put(int,int)

    Symbol 
    	Name get
    	Type 1
    	Signature get(int)

    Symbol 
    	Name clear
    	Type 1
    	Signature clear()

    Symbol 
    	Name print
    	Type 1
    	Signature print()

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name List
    	Type 0
    	Signature List

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name List
    	Type 1
    	Signature List()

    Symbol 
    	Name add
    	Type 1
    	Signature add(int)

    Symbol 
    	Name add
    	Type 1
    	Signature add(int,int)

    Symbol 
    	Name contains
    	Type 1
    	Signature contains(int)

    Symbol 
    	Name remove
    	Type 1
    	Signature remove(int)

    Symbol 
    	Name size
    	Type 1
    	Signature size()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name io
    	Type 0
    	Signature io

    Nmb children 0
    Symbol Table: 
    Symbol 
    	Name io
    	Type 1
    	Signature io()

    Symbol 
    	Name println
    	Type 2
    	Signature println(int)

    Symbol 
    	Name println
    	Type 2
    	Signature println(int,int)

    Symbol 
    	Name readln
    	Type 2
    	Signature readln()

    Structures (0): 



    Node Depth 1
    Node Symbol: 
    Symbol 
    	Name ImportStressTest
    	Type 0
    	Signature ImportStressTest

    Nmb children 0
    Symbol Table: 
    Structures (0): 




Finished generating test XML results (0.02 secs) into: /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build/test-results/test
Generating HTML test report...
Finished generating test html results (0.024 secs) into: /home/bruno/transport/documentation/FEUP/TEC/4_Ano/2_Semestre/Compiladores/trabalho/GitLab/compiladores/build/reports/tests/test
:test (Thread[Execution worker for ':',5,main]) completed. Took 3.739 secs.
:check (Thread[Execution worker for ':' Thread 3,5,main]) started.

> Task :check
Skipping task ':check' as it has no actions.
:check (Thread[Execution worker for ':' Thread 3,5,main]) completed. Took 0.0 secs.
:copyJar (Thread[Execution worker for ':' Thread 3,5,main]) started.

> Task :copyJar
Caching disabled for task ':copyJar' because:
  Build cache is disabled
Task ':copyJar' is not up-to-date because:
  Task has not declared any outputs despite executing actions.
Copying JAR file to ./
:copyJar (Thread[Execution worker for ':' Thread 3,5,main]) completed. Took 0.004 secs.
:build (Thread[Execution worker for ':' Thread 2,5,main]) started.

> Task :build
Skipping task ':build' as it has no actions.
:build (Thread[Execution worker for ':' Thread 2,5,main]) completed. Took 0.0 secs.

BUILD SUCCESSFUL in 5s
8 actionable tasks: 4 executed, 4 up-to-date
