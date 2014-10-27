#!/bin/bash

lintopt=""

for i in $*
do
	echo "=== Puppet-lint"
	puppet-lint $i
	echo "=== Puppet validate"
	puppet parser validate $i
done
