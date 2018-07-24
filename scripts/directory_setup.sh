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
	eval "mkdir ~/Projects/499/$PROJECT/v$number/strong"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/weak"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/pass"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/fail"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/strong/dynComp"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/strong/traces"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/weak/dynComp"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/weak/traces"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/pass/dynComp"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/pass/traces"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/fail/dynComp"
	eval "mkdir ~/Projects/499/$PROJECT/v$number/fail/traces"
done
