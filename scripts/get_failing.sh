#!/bin/bash
PROJECT=$1
VERSION_RANGE=$2

for number in $(seq 1 $VERSION_RANGE)
do
	cd ~/Projects/499/$PROJECT/v$number
	defects4j export -p tests.trigger	-o fail.txt
done
