#!/bin/sh

set -e

ROOT_DIR=$(readlink -f $(dirname $0)/..)

mkdir ~/bin 2>/dev/null || true
cd ~/bin
rm -rf *
cp -r $ROOT_DIR/ .
rm -rf bin
