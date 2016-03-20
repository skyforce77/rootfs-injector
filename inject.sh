#!/bin/bash
mkdir fs
cd fs
cp ../input/rootfs.cpio.gz .
gunzip rootfs.cpio.gz
cpio -id < rootfs.cpio
rm rootfs.cpio
cp -rT ../newfiles .
find . -not -name . | sed -r 's/\.\///g' | cpio -ov -H newc | gzip -9 > ../output/rootfs.cpio.gz
cd ..
rm -R fs
