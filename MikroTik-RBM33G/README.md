Toolchain
=========
Please use a recent OpenWRT toolchain (tested with [17.01.4](https://archive.openwrt.org/releases/17.01.4/targets/ramips/mt7621/lede-sdk-17.01.4-ramips-mt7621_gcc-5.4.0_musl-1.1.16.Linux-x86_64.tar.xz)) for compilation

How to compile
==============

1. Add toolchain bin directory to path

2. ```shell
export BUILD_TOPDIR=$(pwd)
export STAGING_DIR=$BUILD_TOPDIR/tmp

make CROSS_COMPILE=mipsel-openwrt-linux-

head -c 196608 /dev/zero | tr '\000' '\377' > `pwd | xargs basename`.bin
dd conv=notrunc if=uboot.bin of=`pwd | xargs basename`.bin
chmod +x `pwd | xargs basename`.bin
```
