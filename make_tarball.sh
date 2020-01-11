#!/bin/bash
#
if [ $# -ne 2 ]; then
    echo "Usage: $0 <version> <targetdir>"
    exit 1
fi
VERSION=${1}
TGTDIR=$2
#
mkdir /tmp/cronie-${VERSION}
cp -r -- * /tmp/cronie-${VERSION}/
cd /tmp || exit
tar zcvf cronie-${VERSION}.tar-1.gz cronie-${VERSION}
mv cronie-${VERSION}.tar-1.gz ${TGTDIR}
rm -rf /tmp/cronie-${VERSION}
