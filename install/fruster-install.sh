#!/usr/bin/env bash
#
# Installation script for Fruster Scripts
# Copyright Frost Experience AB 2018
# 
# This script installs to /usr/local only.

mkdir -p /usr/local/fruster && cd /usr/local/fruster

git clone --depth 1 -f https://github.com/FrostDigital/fruster-script.git

rm -f /usr/local/bin/fruster-create-kube
rm -f /usr/local/bin/fruster-install-deis
rm -f /usr/local/bin/fruster-install-nats

chmod +x scripts/fruster-create-kube
#chmod +x scripts/fruster-install-deis
#chmod +x scripts/fruster-install-nats

# Link binaries into /usr/local/bin
ln -s scripts/fruster-create-kube /usr/local/bin/fruster-create-kube





