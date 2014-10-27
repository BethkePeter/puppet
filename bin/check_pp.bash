#!/bin/bash
# .pp files testen, mit verschiedene Tests.
# Peter Bethke
# 27.10.2014  


#lintopt="--no-80chars-check"

for i in $*
do
	echo "=== Puppet-lint"
	puppet-lint $lintopt $i
	echo "=== Puppet validate"
	puppet parser validate $i
done
