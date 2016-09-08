#
# ~/.bash_profile
#

# Change defaults
export EDITOR="vim"
export PATH=$HOME/.local/bin:$PATH

# Node.js
export NVM_DIR="/home/ben/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Go
export GOPATH=~/.go
export PATH=$PATH:~/.go/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc
