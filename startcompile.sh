#!/bin/bash

# Copyright (C) 2021 a xyzprjkt property

# Main
DEVICE_DEFCONFIG= # IMPORTANT ! Declare your kernel source defconfig file here.
CLANG_ROOTDIR= # IMPORTANT! Put your clang directory here.
export KBUILD_BUILD_USER= # Change with your own name or else.
export KBUILD_BUILD_HOST= # Change with your own hostname.

# Checking environtment
# Warning !! Dont Change anything there without known reason.
echo ================================================
echo xKernelCompiler
echo version : rev1.0 - gaspoll
echo ================================================
echo BUILDER NAME = ${KBUILD_BUILD_USER}
echo BUILDER HOSTNAME = ${KBUILD_BUILD_HOST}
echo DEVICE_DEFCONFIG = ${DEVICE_DEFCONFIG}
echo CLANG_ROOTDIR = ${CLANG_ROOTDIR}
echo ================================================

# Compile
# Warning !! Dont Change anything there without known reason.
function compile() {
    make -j$(nproc) O=out ARCH=arm64 ${DEVICE_DEFCONFIG}
    make -j$(nproc) ARCH=arm64 O=out \
                               CC=${CLANG_ROOTDIR}/bin/clang \
                               CROSS_COMPILE=${CLANG_ROOTDIR}/bin/aarch64-linux-gnu- \
                               CROSS_COMPILE_ARM32=${CLANG_ROOTDIR}/bin/arm-linux-gnueabi-
}
compile
