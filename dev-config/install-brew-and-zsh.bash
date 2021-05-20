#!/usr/bin/env bash
set -env

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git

brew install zsh
sudo bash -C '/bin/zsh >> /etc/shells'
chsh -s /bin/zsh