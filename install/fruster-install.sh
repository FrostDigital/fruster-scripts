#!/usr/bin/env bash
#
# Installation script for Fruster Scripts
# Copyright Frost Experience AB 2018
# 
# This script installs to /usr/local only.

#set -o xtrace

TEMP_DIR=$(mktemp -d)
TARGET_DIR=/usr/local/fruster
BIN_DIR=/usr/local/bin
ZIP_PACKAGE=$TEMP_DIR/fruster-scripts.zip

rm -rf $TARGET_DIR
mkdir -p $TARGET_DIR

echo "Downloading package from github..."

curl -sLk -o $ZIP_PACKAGE https://github.com/FrostDigital/fruster-scripts/archive/master.zip

echo "Extracting..."

echo $TEMP_DIR
unzip $ZIP_PACKAGE -d $TEMP_DIR  
cp -R $TEMP_DIR/fruster-scripts-master/* $TARGET_DIR

# Remove old versions
rm -f $BIN_DIR/fruster-create-kube
rm -f $BIN_DIR/fruster-install-deis
rm -f $BIN_DIR/fruster-install-nats
rm -f $BIN_DIR/fruster-switch

echo "Linking..."

# Link binaries into /usr/local/bin
ln -s $TARGET_DIR/scripts/fruster-create-kube $BIN_DIR/fruster-create-kube
ln -s $TARGET_DIR/scripts/fruster-install-deis $BIN_DIR/fruster-install-deis
ln -s $TARGET_DIR/scripts/fruster-install-nats $BIN_DIR/fruster-install-nats
ln -s $TARGET_DIR/scripts/fruster-switch $BIN_DIR/fruster-switch

echo "Installation complete!"




