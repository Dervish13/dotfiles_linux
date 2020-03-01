#!/bin/sh


ROOT_DIR="$(readlink -f $(dirname $0)/..)"
PROGRAM="neomutt"

mkdir ~/.config 2>/dev/null || true
rm -rf /usr/local/etc/neomuttrc

cd ~/.config
rm -rf $PROGRAM
mkdir $PROGRAM
cp "${ROOT_DIR}/neomuttrc" /usr/local/etc/neomuttrc
cp "${ROOT_DIR}/account.gmail.rajko" ${PROGRAM}/account.gmail.rajko
cp "${ROOT_DIR}/account.tilda.dervish" ${PROGRAM}/account.tilda.dervish
