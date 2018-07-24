#!/bin/bash

TRACE_FILE=$1
JAVA7="/usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java "
MEMORY="-Xmx7000m "
OUTPUT_FILE="${TRACE_FILE//".dtrace.gz"/}"
DAIKON_COMMAND="daikon.Daikon --ppt-select-pattern=org.apache.commons.lang3.* --show_progress -o $OUTPUT_FILE.inv.gz $TRACE_FILE "

eval "$JAVA7$MEMORY$DAIKON_COMMAND"
