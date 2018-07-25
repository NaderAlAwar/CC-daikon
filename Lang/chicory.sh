#!/bin/bash

# $1 is the name of the test and $2 is the name of the file generated by DynComp
# output is a .dtrace file containing the trace

TEST_NAME="$1"
COMP_FILE="$2"
VERSION_NAME="$3"
OUTPUT_DIR="$4"
OUTPUT_FILE="$1"
JAVA7="/usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java "
CLASSPATH="-verbose:class -classpath /home/nader/Projects/defects4j/framework/lib/formatter.jar:/home/nader/Projects/defects4j/framework/projects/lib/junit-4.11.jar:/home/nader/Projects/499/Lang/v$VERSION_NAME/target/classes:/home/nader/Projects/499/Lang/v$VERSION_NAME/target/tests:/home/nader/Projects/defects4j/framework/projects/Lang/lib/easymock.jar:/home/nader/Projects/defects4j/framework/projects/Lang/lib/commons-io.jar:/home/nader/Projects/defects4j/framework/projects/Lang/lib/cglib.jar:/home/nader/Projects/defects4j/framework/projects/Lang/lib/asm.jar:/home/nader/Projects/defects4j/framework/lib/test_generation/runtime/evosuite-rt.jar:/home/nader/Projects/Daikon/daikon-5.6.2/daikon.jar:/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre/lib/rt.jar:/usr/lib/jvm/java-1.8.0-openjdk-amd64/lib/tools.jar "
DAIKON_COMMAND="daikon.Chicory --std-visibility --comparability-file=$COMP_FILE --dtrace-file=$OUTPUT_FILE.dtrace.gz --output-dir=$OUTPUT_DIR "
TEST_RUNNER="edu.washington.cs.mut.testrunner.SingleTestRunner "

eval $JAVA7$CLASSPATH$DAIKON_COMMAND$TEST_RUNNER$TEST_NAME