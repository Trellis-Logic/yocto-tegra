#!/bin/bash
scriptdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
deployfile=core-image-minimal-jetson-tx2.tegraflash.zip
tmpdir=`mktemp`
rm -rf $tmpdir
mkdir -p $tmpdir
echo "Using temp directory $tmpdir"
pushd $tmpdir
cp $scriptdir/build/tmp/deploy/images/jetson-tx2/$deployfile .
unzip $deployfile
set -e
sudo ./doflash.sh
popd
echo "Removing temp directory $tmpdir"
