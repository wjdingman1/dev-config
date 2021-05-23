#!/usr/bin/env bash
set -env

if ! brew list -1 | grep -q git; then
    brew install git
fi

# https://www.atlassian.com/git/tutorials/dotfiles
config="usr/bin/git --git-dir=$HOME/.dev-config.git/ --worktree=$HOME"

FILE=$HOME/.gitignore
if [ ! -f "$FILE" ]; then
    touch $FILE
fi

# Add bare repo to .gitignore
if ! grep -q ".dev-config.git" $HOME/.gitignore; then
    echo ".dev-config.git" >> $HOME/.gitignore
fi

# Clone bare repo if it doesn't exist
[[ -d $HOME/.dev-config.git ]] || git clone --bare git@github.com:wjdingman1/dev-config.git $HOME/.dev-config.git

# Checkout bare repo, will overrwrite coexisting files in ~
$config checkout
$config config --local status.showUntrackedFiles no
