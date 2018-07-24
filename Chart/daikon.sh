#!/bin/bash

# OUTPUT_FILE="$1"
TRACE_FILE=$1
# DECLS_FILE="$3"
JAVA7="/usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java "
MEMORY="-Xmx6000m "
DAIKON_COMMAND="daikon.Daikon --ppt-omit-pattern=junit --show_progress -o=test.inv.gz $TRACE_FILE "
$JAVA7$MEMORY$DAIKON_COMMAND| tee $OUTPUT_FILE
