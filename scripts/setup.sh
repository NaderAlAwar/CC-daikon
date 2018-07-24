#!/bin/bash
# takes the project's name as an argument and sets up all of its versions

PROJECT=$1
if [ "$PROJECT" = "Chart" ]; then
	VERSIONS=26
fi

if [ "$PROJECT" = "Lang" ]; then
	VERSIONS=65
fi

if [ "$PROJECT" = "Math" ]; then
	VERSIONS=106
fi

for number in $(seq 1 $VERSIONS)
do
	eval "mkdir ~/Projects/499/$PROJECT/v$number"
	eval "cd ~/Projects/499/$PROJECT/v$number"
	eval "defects4j checkout -p $PROJECT -v ${number}b -w ."
	eval "defects4j compile"
	eval "defects4j test"
done
