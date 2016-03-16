#
# ~/.bash_profile
#

# Change defaults
export EDITOR="vim"
export PATH=$HOME/.local/bin:$PATH

# Node.js
export NVM_DIR="/home/ben/.nvm"
export PATH=$PATH:~/.npm/bin
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#source /usr/share/nvm/init-nvm.sh

# Go
export GOPATH=~/.go
export PATH=$PATH:~/.go/bin

# Ruby
export PATH=$PATH:~/.gem/ruby/2.3.0/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc
