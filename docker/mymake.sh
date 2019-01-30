#!/bin/sh
#

# Clean up
rm -rf ../src/build-mac/*
rm -rf ../src/build-lin/*
rm -rf ../src/build-win/*

mkdir -p ../bin/64

make mac
cp ../src/build-mac/libmac.xpl ../bin/64/mac.xpl

make lin
cp ../src/build-lin/liblin.xpl ../bin/64/lin.xpl


make win
cp ../src/build-win/libwin.xpl ../bin/64/win.xpl

echo cp -r ../bin/64 /Volumes/Luna/X-Plane 11/Resources/plugins/xsmoke/
