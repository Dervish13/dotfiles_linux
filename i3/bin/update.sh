#!/bin/sh

set -e

ROOT_DIR=$(readlink -f $(dirname $0)/..)
PROGRAM="i3"
cd ~/.config/$PROGRAM
cp -r * $ROOT_DIR


