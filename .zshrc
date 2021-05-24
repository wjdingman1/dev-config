# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH="/Users/wdingman/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Zsh
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'

# Java
export JAVA_HOME='/usr/libexec/java_home'

# Random Helpers
get-port() {
	command lsof -i:"$@"
}

# Broad
alias cromr='java -jar ~/Broad/Lantern/bin/cromwell-63.jar run'
alias croms='java -jar -server ~/Broad/Lantern/bin/cromwell-63.jar run'
alias wom='java -jar ~/Broad/Lantern/bin/womtool-63.jar'

# Development Git Config
alias config='/usr/bin/git --git-dir=$HOME/.dev-config.git --work-tree=$HOME'

# Python
alias python="python3"
alias pip="pip3"

# Docker
alias d='docker'
alias di='docker images'
alias dk='docker kill $(docker ps -qa)'
alias dpsa='docker ps -a'
alias dcu='docker-compose up -d'
alias dcd='docker-compose down'

# Git
alias g='git'
alias gcm='git commit -m'
alias ga='git add .'
alias gb='git branch'
alias gbd='git branch -D'
alias gba='git branch -a'
alias gchb='git checkout -b'
alias gch='git checkout' 
alias gpl='git pull'
alias gpu='git push'
