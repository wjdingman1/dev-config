#!/usr/bin/env bash
set -e

git init --bare $HOME/.dev-config.git
gconfig="usr/bin/git --git-dir=$HOME/.dev-config.git/ --work-tree=$HOME"
$gconfig config --local status.showUntrackedFiles no

FILE=$HOME/.zshrc
if [ -f "$FILE" ]; then
    echo "alias gconfig="$gconfig"" >> $FILE
fi
