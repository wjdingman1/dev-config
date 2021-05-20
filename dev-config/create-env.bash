#!/usr/bin/env bash
set -e

git init --bare $HOME/.dev-config.git
$config="usr/bin/git --git-dir=$HOME/.dev-config.git/ --work-tree=$HOME"
$config config --local status.showUntrackedFiles no

FILE=$HOME/.zshrc
if [ -f "$FILE" ]; then
    echo "alias config="$config"" >> $FILE
fi