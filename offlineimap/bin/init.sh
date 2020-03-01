#!/usr/bin/sh

set -e

ROOT_DIR=$(readlink -f $(dirname $0)/..)
PROGRAM=".offlineimaprc"

rm -rf ~/$PROGRAM
cp ~/$ROOT_DIR/$PROGRAM ~/$PROGRAM


