#!/usr/bin/env bash
set -env

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git

# zsh
brew install zsh
sudo bash -C '/bin/zsh >> /etc/shells'
chsh -s /bin/zsh

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
