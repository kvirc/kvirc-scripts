#!/bin/bash

for a in *.po; do
	MOFILE=$(echo $a | sed -e 's/\.po/\.mo/g')
	msgfmt -o $MOFILE $a
done
