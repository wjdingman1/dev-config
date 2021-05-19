#!/usr/bin/env bash
set -env

if ! brew list -1 | grep -q git; then
    brew install git
fi

#https://www.atlassian.com/git/tutorials/dotfiles
config="usr/bin/git --git-dir=$HOME/.config-env.git/ --worktree=$HOME"

FILE=$HOME/.gitignore
if [ ! -f "$FILE" ]; then
    touch $FILE
fi

if ! grep -q ".config-env.git" $HOME/gitignore; then
    echo ".config-env.git" >> $HOME/.gitignore
fi

[[ -d $HOME/.config-env.git ]] || git clone --bare git@github.com:wjdingman1/config-env.git $HOME/.config-env.git

$config checkout
$config config --local status.showUntrackedFiles no

echo "alias config="$config"" >> $HOME/.zshrc