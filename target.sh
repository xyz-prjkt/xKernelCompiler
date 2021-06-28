#!/bin/bash

# Copyright (C) 2021 a xyzprjkt property

# Main
KERNEL_ROOTDIR=$(pwd)/lavender # IMPORTANT ! Fill with your kernel source root directory.
DEVICE_DEFCONFIG=lavender-perf_defconfig # IMPORTANT ! Declare your kernel source defconfig file here.
CLANG_ROOTDIR=$(pwd)/proton # IMPORTANT! Put your clang directory here.
export KBUILD_BUILD_USER=xyzuan # Change with your own name or else.
export KBUILD_BUILD_HOST=xyzscape-ci # Change with your own hostname.
