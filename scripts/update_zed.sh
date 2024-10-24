#!/bin/bash

SRC_DIR="$HOME/.config/zed"
DEST_DIR="$HOME/dev/dotfiles/zed"

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
COMMIT_MSG="[zed] $TIMESTAMP"

cp -r $SRC_DIR/keymap.json $DEST_DIR/
cp -r $SRC_DIR/settings.json $DEST_DIR/
cp -r $SRC_DIR/themes $DEST_DIR/

cd $HOME/dev/dotfiles

git add .

git commit -m "$COMMIT_MSG"

git push

echo "we gucci!"
