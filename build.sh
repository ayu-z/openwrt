#!/bin/bash

cp GS-4GR11.config .config
VERSION=GainStrong-$(./scripts/getver.sh)
echo "CONFIG_KERNEL_BUILD_DOMAIN=\"$VERSION\"" >> .config
make package/symlinks
make defconfig

make package/busybox/clean
make -j8 V=sc
