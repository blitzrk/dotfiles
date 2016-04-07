#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Change defaults
export PS1="[\[\033[0;37m\]\u@$HOSTNAME\[\033[0;95m\] \W\[\033[00m\]] \$ "
export LS_COLORS='di=96:fi=37:ln=31;47:pi=95:so=95:bd=95:cd=5:or=31:mi=0:ex=92'
export BROWSER="google-chrome-stable"
export TERM=xterm-256color

# Aliases
alias ls='ls --color=auto'
alias ssh='ssh -o ServerAliveInterval=100'
alias shutdown='sudo systemctl poweroff'
alias reboot='sudo systemctl reboot'
alias wifi='nmcli r wifi'

# SSH Agent
eval $(keychain --eval --quiet id_rsa)

# added by travis gem
[ -f /home/ben/.travis/travis.sh ] && source /home/ben/.travis/travis.sh
