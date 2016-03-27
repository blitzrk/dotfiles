#
# ~/.bash_profile
#

# Change defaults
export EDITOR="vim"
export PATH=$HOME/.local/bin:$PATH

# Node.js
source /usr/share/nvm/init-nvm.sh

# Go
export GOPATH=~/.go
export PATH=$PATH:~/.go/bin

# Ruby
export PATH=$PATH:~/.gem/ruby/2.3.0/bin

[[ -f ~/.bashrc ]] && . ~/.bashrc
