#!/usr/bin/bash

if [ -d "./run_tmp" ]; then
    rm -f ./run_tmp/*
else
    mkdir ./run_tmp
fi

if [ $# != 3 ]; then
    echo "Usage: ./run.sh FILE_PATH BASH_VERBOSITY COMPILER_VERBOSITY"
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
    exit -1
fi

if [ ! -f $1 ]; then
    echo "File $1 not found!"
    exit -1
fi


#Build compiler
gradle build &> ./run_tmp/gradle_output
if [ $2 -gt 0 ]; then
    cat ./run_tmp/gradle_output
fi
if ! cat ./run_tmp/gradle_output | grep -q 'BUILD SUCCESSFUL'; then
    echo GRADLE FAILED
    exit -1
fi
echo GRADLE SUCCESSFUL

#Run compiler
java -jar comp2020-2i.jar $1 -v=$3 &> ./run_tmp/compiler_output
cat ./run_tmp/compiler_output
if ! cat ./run_tmp/compiler_output | grep -q 'COMPILATION SUCCESSFUL'; then
    echo COMPILATION FAILED
    exit -1
fi

#Run Jasmin
java -jar jasmin.jar JasminOut.j &> ./run_tmp/jasmin_output
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

java $Class &> ./run_tmp/java_output

if ! cat ./run_tmp/java_output | grep -q 'Exception in thread'; then
    echo JAVA SUCCESSFUL
else
    echo JAVA FAILED
fi

if [ $2 -gt 2 ]; then
    cat ./run_tmp/java_output
fi


#gradle build

