#!/bin/bash

# $1 is the name of the test and $2 is the name of the output file
# output is a .decls file containing comparability information

TEST_NAME="$1"
OUTPUT_FILE="$2.decls-DynComp"
VERSION_NAME="$3"
OUTPUT_DIR="$4"
JAVA7="/usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java "
CLASSPATH="-verbose:class -classpath /home/user/Projects/defects4j/framework/lib/formatter.jar:/home/user/Projects/defects4j/framework/projects/lib/junit-4.11.jar:/home/user/Projects/499/Lang/v$VERSION_NAME/target/classes:/home/user/Projects/499/Lang/v$VERSION_NAME/target/tests:/home/user/Projects/defects4j/framework/projects/Lang/lib/easymock.jar:/home/user/Projects/defects4j/framework/projects/Lang/lib/commons-io.jar:/home/user/Projects/defects4j/framework/projects/Lang/lib/cglib.jar:/home/user/Projects/defects4j/framework/projects/Lang/lib/asm.jar:/home/user/Projects/defects4j/framework/lib/test_generation/runtime/evosuite-rt.jar:/home/user/Projects/Daikon/daikon-5.6.6/daikon.jar:/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre/lib/rt.jar:/usr/lib/jvm/java-1.8.0-openjdk-amd64/lib/tools.jar "
DAIKON_COMMAND="daikon.DynComp --std-visibility --decl-file=$OUTPUT_FILE --output-dir=$OUTPUT_DIR "
TEST_RUNNER="edu.washington.cs.mut.testrunner.SingleTestRunner "

eval $JAVA7$CLASSPATH$DAIKON_COMMAND$TEST_RUNNER$TEST_NAME
