#!/bin/bash -e

install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/"
install -m 644 files/config.txt "${ROOTFS_DIR}/boot/"

dtc -O dtb files/limelight-dt.dts -o "${ROOTFS_DIR}/boot/dt-blob.bin"