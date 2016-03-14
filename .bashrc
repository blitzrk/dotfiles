#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Change defaults
export EDITOR="vim"
export BROWSER="google-chrome-stable"
export PS1="[\[\033[0;37m\]\u@$HOSTNAME\[\033[0;95m\] \W\[\033[00m\]] \$ "
export LS_COLORS='di=96:fi=37:ln=31;47:pi=95:so=95:bd=95:cd=5:or=31:mi=0:ex=92'
export PATH=$HOME/.local/bin:$PATH

# Node.js
export NVM_DIR="/home/ben/.nvm"
export PATH=$PATH:~/npm/bin
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#source /usr/share/nvm/init-nvm.sh

# Go
export GOPATH=~/.go
export PATH=$PATH:~/.go/bin

# Ruby
export PATH=$PATH:~/.gem/ruby/2.3.0/bin

# Aliases
alias ls='ls --color=auto'
alias ssh='ssh -o ServerAliveInterval=100'

# Start SSH Agent
#eval $(ssh-agent)
#alias ssh-add='ssh-add -t 1h'
