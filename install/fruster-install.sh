#!/usr/bin/env bash
#
# Installation script for Fruster Scripts
# Copyright Frost Experience AB 2018
# 
# This script installs to /usr/local only.

TARGET_DIR=/usr/local/fruster
BIN_DIR=/usr/local/bin

rm -rf $TARGET_DIR
mkdir -p $TARGET_DIR

git clone --depth 1 https://github.com/FrostDigital/fruster-scripts.git $TARGET_DIR

# Remove old versions
rm -f $BIN_DIR/fruster-create-kube
rm -f $BIN_DIR/fruster-install-deis
rm -f $BIN_DIR/fruster-install-nats

# Link binaries into /usr/local/bin
ln -s $TARGET_DIR/scripts/fruster-create-kube $BIN_DIR/fruster-create-kube
ln -s $TARGET_DIR/scripts/fruster-install-deis $BIN_DIR/fruster-install-deis
ln -s $TARGET_DIR/scripts/fruster-install-nats $BIN_DIR/fruster-install-nats





