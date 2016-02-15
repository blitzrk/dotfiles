#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Change defaults
export EDITOR="vim"
export BROWSER="google-chrome-stable"
export PS1="[\[\033[0;92m\]\u@$HOSTNAME\[\033[0;94m\] \W\[\033[00m\]] \$ "

# Aliases
alias ls='ls --color=auto'
alias ssh='ssh -o ServerAliveInterval=100'
alias hugoserver="hugo server --bind=0.0.0.0 -b 192.168.1.3"

# Start SSH Agent
#eval $(ssh-agent)
#alias ssh-add='ssh-add -t 1h'

# Ruby
export PATH=$PATH:~/.gem/ruby/2.3.0/bin

# Node.js
export NVM_DIR="/home/ben/.nvm"
export PATH=$PATH:~/npm/bin
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Go
export GOPATH=~/go
export PATH=$PATH:~/go/bin
export GO15VENDOREXPERIMENT=1
