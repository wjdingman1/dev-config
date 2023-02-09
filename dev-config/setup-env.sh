#!/usr/bin/env bash
set -env

if ! brew list -1 | grep git; then
    brew install git
fi

# https://www.atlassian.com/git/tutorials/dotfiles
gconfig="git --git-dir=$HOME/.dev-config.git/ --work-tree=$HOME"

# Clone bare repo if it doesn't exist
git clone --bare git@github.com:wjdingman1/dev-config.git $HOME/.dev-config.git

# Checkout bare repo, will overrwrite coexisting files in ~
$gconfig checkout
$gconfig config --local status.showUntrackedFiles no
