#!/bin/bash

. config.sh

echo "Creating distribution for KVIrc script" $SCRIPT $VERSION

DISTRODIR=$SCRIPT.$VERSION
PACKAGE=$SCRIPT.kvs.$VERSION

THISDIR=$(pwd)

set -x

rm -rf $DISTRODIR
mkdir $DISTRODIR

if test $HAS_PICS = "yes"; then
	mkdir $DISTRODIR/pics
fi
if test $HAS_PO = "yes"; then
	mkdir $DISTRODIR/po
	cd po && sh build.sh
fi

cd $THISDIR

cp *.kvs $DISTRODIR/
cp README INSTALL $DISTRODIR/
if test $HAS_PICS = "yes"; then
	cp pics/*.png $DISTRODIR/pics/
fi
if test $HAS_PO = "yes"; then
	cp po/*.mo $DISTRODIR/po/
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
