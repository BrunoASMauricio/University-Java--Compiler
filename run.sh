#!/usr/bin/bash

if [ -d "./run_tmp" ]; then
    rm -f ./run_tmp/*
else
    mkdir ./run_tmp
fi

if [ $# != 6 ]; then
    echo "Usage: ./run.sh FILE_PATH BASH_VERBOSITY COMPILER_VERBOSITY INTERACTIVE RVALUE OVALUE"
    echo "FILE_PATH: the file to compile"
    echo "BASH_VERBOSITY: this scripts verbosity"
    echo "0: No output"
    echo "1: Only gradle"
    echo "2: Jasmin + above"
    echo "3: Java + above"
    echo "COMPILER_VERBOSITY: the verbosity to send to the compiler"
    echo "0: No output"
    echo "1: Only syntactic output"
    echo "2: Semantic output and higher"
    echo "3: jasmin output and higher"
    echo "INTERACTIVE: == 1 to allow direct Java program interaction (no java output logging)"
    echo "RVALUE: -r value to pass to the compiler"
    echo "OVALUE: -o value to pass to the compiler (!0 to activate the flag)"
    exit -1
fi

if [ ! -f $1 ]; then
    echo "File $1 not found!"
    exit -1
fi

JavaC=/usr/lib/jvm/java-13-openjdk/bin/java

#Build compiler
gradle -Dorg.gradle.java.home=/usr/lib/jvm/java-13-openjdk --info build &> ./run_tmp/gradle_output
if [ $2 -gt 0 ]; then
    cat ./run_tmp/gradle_output
fi
if ! cat ./run_tmp/gradle_output | grep -q 'BUILD SUCCESSFUL'; then
    echo GRADLE FAILED
    exit -1
fi
echo GRADLE SUCCESSFUL

#Run compiler
if [ $6 -gt 0 ]; then
    $JavaC -jar comp2020-2i.jar $1 -v=$3 -r=$5 -o &> ./run_tmp/compiler_output
else
    $JavaC -jar comp2020-2i.jar $1 -v=$3 -r=$5 &> ./run_tmp/compiler_output
fi

cat ./run_tmp/compiler_output
if ! cat ./run_tmp/compiler_output | grep -q 'COMPILATION SUCCESSFUL'; then
    echo COMPILATION FAILED
    exit -1
fi
mv JasminOut.j ./run_tmp

#Run Jasmin
$JavaC -jar jasmin.jar ./run_tmp/JasminOut.j &> ./run_tmp/jasmin_output

if [ $2 -gt 1 ]; then
    cat ./run_tmp/jasmin_output
fi

if ! cat ./run_tmp/jasmin_output | grep -q 'Generated:'; then
    echo JASMIN FAILED
    exit -1
fi
echo JASMIN SUCCESSFUL

Class="$(cat ./run_tmp/jasmin_output | sed 's/Generated: //' | sed 's/.class//')"
echo Class: $Class

cp -r build/resources/test/fixtures/libs/compiled/* ./run_tmp
mv $Class.class ./run_tmp

cd run_tmp

if [ $4 -eq 1 ]; then
    $JavaC $Class
else
    $JavaC $Class &> ./java_output
    if ! cat ./java_output | grep -q 'Exception in thread' && ! cat ./java_output | grep -q 'Error'; then
        echo JAVA SUCCESSFUL
    else
        echo JAVA FAILED
    fi

    if [ $2 -gt 2 ]; then
        cat ./java_output
    fi
fi
