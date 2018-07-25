#!/bin/bash

# $1 is the name of the test and $2 is the name of the output file
# output is a .decls file containing comparability information

TEST_NAME="$1"
OUTPUT_FILE="$2.decls-DynComp"
VERSION_NAME="$3"
OUTPUT_DIR="$4"
JAVA7="/usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java "
CLASSPATH="-verbose:class -classpath ~/Projects/defects4j/framework/lib/formatter.jar:~/Projects/defects4j/framework/projects/lib/junit-4.11.jar:~/Projects/499/Lang/v$VERSION_NAME/target/classes:~/Projects/499/Lang/v$VERSION_NAME/target/tests:~/Projects/defects4j/framework/projects/Lang/lib/easymock.jar:~/Projects/defects4j/framework/projects/Lang/lib/commons-io.jar:~/Projects/defects4j/framework/projects/Lang/lib/cglib.jar:~/Projects/defects4j/framework/projects/Lang/lib/asm.jar:~/Projects/defects4j/framework/lib/test_generation/runtime/evosuite-rt.jar:~/Projects/Daikon/daikon-5.6.2/daikon.jar:/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre/lib/rt.jar:/usr/lib/jvm/java-1.8.0-openjdk-amd64/lib/tools.jar "
DAIKON_COMMAND="daikon.DynComp --std-visibility --decl-file=$OUTPUT_FILE --output-dir=$OUTPUT_DIR "
TEST_RUNNER="edu.washington.cs.mut.testrunner.SingleTestRunner "

eval $JAVA7$CLASSPATH$DAIKON_COMMAND$TEST_RUNNER$TEST_NAME
