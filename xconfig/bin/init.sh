#!/bin/sh

ROOT_DIR="$(readlink -f $(dirname $0)/..)"

rm -rf ~/.xinitrc ~/.Xdefaults ~/.xmodmap
ln "${ROOT_DIR}/.xmodmap" ~/.xmodmap
ln "${ROOT_DIR}/.xinitrc" ~/.xinitrc
ln "${ROOT_DIR}/.Xdefaults" ~/.Xdefaults
