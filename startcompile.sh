#!/bin/bash

# Copyright (C) 2021 a xyzprjkt property

# Main
DEVICE_DEFCONFIG= # IMPORTANT ! Declare your kernel source defconfig file here.
CLANG_DIR= # IMPORTANT! Put your clang directory here.
export KBUILD_BUILD_USER=xyzuan # Change with your own name or else.
export KBUILD_BUILD_HOST=xyzscape # Change with your own hostname.

# Checking environtment
# Warning !! Dont Change anything there without known reason.
echo xKernelCompiler rev1.0 | a property of xyzprjkt
echo BUILDER NAME = ${KBUILD_BUILD_USER}
echo BUILDER HOSTNAME = ${KBUILD_BUILD_HOST}
echo DEVICE_DEFCONFIG = ${DEVICE_DEFCONFIG}
echo CLANG_DIR = ${CLANG_DIR}

# Compile
# Warning !! Dont Change anything there without known reason.
function compile() {
    make -j$(nproc) O=out ARCH=arm64 ${DEVICE_DEFCONFIG}
    make -j$(nproc) ARCH=arm64 O=out \
                               CC=${CLANG_DIR}/bin/clang \
                               CROSS_COMPILE=${CLANG_DIR}/bin/aarch64-linux-gnu- \
                               CROSS_COMPILE_ARM32=${CLANG_DIR}/bin/arm-linux-gnueabi-
}
compile
