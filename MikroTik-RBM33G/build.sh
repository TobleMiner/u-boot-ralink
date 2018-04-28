#!/bin/bash

export BUILD_TOPDIR=$(pwd)
export STAGING_DIR=$BUILD_TOPDIR/tmp

make CROSS_COMPILE=mipsel-openwrt-linux-
