ZSH_DISABLE_COMPFIX="true"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=66'

plugins=(tmux zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Zsh
alias zshconfig='vim ~/.zshrc'
alias ohmyzsh='vim ~/.oh-my-zsh'

# Java
# export JAVA_HOME_8=$(/usr/libexec/java_home -v1.8)
# export JAVA_HOME_11=$(/usr/libexec/java_home -v1.11)
# export JAVA_HOME_14=$(/usr/libexec/java_home -v1.14)

# Java Home
export JAVA_HOME=$JAVA_HOME_8

# Random Helpers


# Modern Unix
alias ls='exa'
alias cat='bat'
alias df='duf'

# Development Git Config
alias config='/usr/bin/git --git-dir=$HOME/.dev-config.git --work-tree=$HOME'

# Python
alias python="python3"
alias pip="pip3"

# Go
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

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


# Spark 
export SPARK_HOME=/opt/spark
export SPARK_BIN=/opt/spark/bin

export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'

export PATH="$SPARK_HOME:$SPARK_BIN:$PATH"

# SQLite
export PATH="/usr/local/opt/sqlite/bin:$PATH"
alias sqlite='sqlite3'
