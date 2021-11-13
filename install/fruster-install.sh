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
rm -f $BIN_DIR/fruster-switch
rm -f $BIN_DIR/fruster-run-remote

echo "Linking..."

# Link binaries into /usr/local/bin
ln -s $TARGET_DIR/scripts/fruster-switch $BIN_DIR/fruster-switch
ln -s $TARGET_DIR/scripts/fruster-run-remote $BIN_DIR/fruster-run-remote

echo "Installation complete!"




