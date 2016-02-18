#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HOSTNAME=pixel
export PS1="[\[\033[0;92m\]\u@$HOSTNAME\[\033[0;94m\] \W\[\033[00m\]] \$ "

# Go
export GOPATH=~/go
export PATH=$PATH:~/go/bin

# Node
source /usr/share/nvm/init-nvm.sh

alias ls='ls --color=auto'
alias startx="xinit >/dev/null 2>&1 &"
alias stopx="pkill X"

function unmount() {
	sudo kill -9 `ps aux | egrep '^dbus' | awk '{print $2}'`
   	tmux kill-server
	exit
}

alias unmount="unmount >/dev/null 2>&1"
