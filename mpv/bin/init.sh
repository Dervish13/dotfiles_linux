#!/bin/sh

set -e

ROOD_DIR=$(readlink -f $(dirname $0)/..)
PROGRAM="mpv"
cd ~/.config
rm -rf $PROGRAM
ln -s $ROOT_DIR $PROGRAM
