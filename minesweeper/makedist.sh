#!/bin/bash

. config.sh

echo "Creating distribution for KVIrc script" $SCRIPT $VERSION

DISTRODIR=$SCRIPT.$VERSION
PACKAGE=$SCRIPT.kvs.$VERSION

THISDIR=$(pwd)

set -x

rm -rf $DISTRODIR
mkdir $DISTRODIR

cd $THISDIR

cp *.kvs $DISTRODIR/

do_copy_file()
{
	if test -f ./$1; then
		if ! test -f $2/$1; then
			cp ./$1 $2/$1
		fi
	fi
}

do_copy_file README $DISTRODIR
do_copy_file INSTALL $DISTRODIR
do_copy_file FAQ $DISTRODIR

if test -n $EXTRA_DIST; then
	for a in $EXTRA_DIST; do
		do_copy_file $a $DISTRODIR
	done
fi

if test -d ./help; then
	HELPDIRS=$(find ./help/ -type d -maxdepth 1)
	if test -n "$HELPDIRS"; then
		mkdir $DISTRODIR/help
		for dd in $HELPDIRS; do
			HELPFILES=$(find ./help/$dd/ -name "*.html")
			mkdir $DISTRODIR/help/$dd

			for a in $HELPFILES; do
				cp $a $DISTRODIR/help/$dd
			done
		done
	fi
fi



if test -d ./utils; then
	KVSFILES=$(find ./utils/ -name "*.kvs")
	if test -n "$KVSFILES"; then

		mkdir $DISTRODIR/utils

		for a in $KVSFILES; do
			cp $a $DISTRODIR/utils/
		done
	fi
fi

if test -d ./pics; then
	PICFILES=$(find ./pics/ -name "*.png")
	if test -n "$PICFILES"; then

		mkdir $DISTRODIR/pics

		for a in $PICFILES; do
			cp $a $DISTRODIR/pics/
		done
	fi
fi

if test -d ./locale; then
	POFILES=$(find ./locale/ -name "*.po")
	if test -n "$POFILES"; then
		cd locale 
		sh build.sh
		cd ..
	fi

	MOFILES=$(find ./locale/ -name "*.mo")

	if test -n "$MOFILES"; then
		mkdir $DISTRODIR/locale
		for a in $MOFILES; do
			cp $a $DISTRODIR/locale/
		done
	fi
fi

if test $BUILD_TARGZ = "yes"; then
	rm -f $PACKAGE.tar.gz
	tar -zcf $PACKAGE.tar.gz $DISTRODIR
fi

if test $BUILD_TARBZ2 = "yes"; then
	rm -f $PACKAGE.tar.bz2
	tar -jcf $PACKAGE.tar.bz2 $DISTRODIR
fi

if test $BUILD_ZIP = "yes"; then
	rm -f $PACKAGE.zip
	zip -r $PACKAGE.zip $DISTRODIR
fi

rm -rf $DISTRODIR

set +x

echo "$PACKAGE created"
