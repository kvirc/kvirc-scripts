#!/bin/bash

# Version of the script
version="1.3"

# Choose the file types you want to include
filetypes='*.kvs *.png *.po *.mo'

#################################################3

test ! -f install.kvs && echo Bad directory && exit

test -z "$(grep '"'$version'"' install.kvs)" && echo "Wrong version ($version)" && exit

dir=$(pwd)
name=$(basename $dir)-$version

\rm -rf $name*
mkdir $name
for file in INSTALL README AUTHORS FAQ ; do
	test -f $file && cp $file $name
done

for itype in $(seq 1 $(echo $filetypes | wc -w)) ; do
	for file in $(find . -name "$(echo "$filetypes" | cut -d" " -f$itype)" -print) ; do
		dir=$name/$(dirname $file| cut -c3-)
		mkdir -p $dir
		cp -f $file $dir
	done
done

zip -r $name.zip $name
\rm -r $name


