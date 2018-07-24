#!/bin/bash

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
	mkdir ~/Projects/499/$PROJECT/v$number/strong
	mkdir ~/Projects/499/$PROJECT/v$number/weak
	mkdir ~/Projects/499/$PROJECT/v$number/pass
	mkdir ~/Projects/499/$PROJECT/v$number/fail
	mkdir ~/Projects/499/$PROJECT/v$number/strong/dynComp
	mkdir ~/Projects/499/$PROJECT/v$number/strong/traces
	mkdir ~/Projects/499/$PROJECT/v$number/weak/dynComp
	mkdir ~/Projects/499/$PROJECT/v$number/weak/traces
	mkdir ~/Projects/499/$PROJECT/v$number/pass/dynComp
	mkdir ~/Projects/499/$PROJECT/v$number/pass/traces
	mkdir ~/Projects/499/$PROJECT/v$number/fail/dynComp
	mkdir ~/Projects/499/$PROJECT/v$number/fail/traces
done
