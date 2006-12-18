#!/bin/bash

. ../config.sh

SOURCEFILES=../*.kvs

POTFILE=$SCRIPT.pot

xgettext -o $POTFILE -ktr $SOURCEFILES

old=_old

for lang in *.po; do
	echo "Updating file $lang";
	mv -f $lang $lang$old
	msgmerge -o $lang $lang$old $POTFILE
	if test -f $lang; then
		rm -f $lang$old
	fi
done

