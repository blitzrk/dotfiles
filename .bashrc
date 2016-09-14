#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Functions
function __git_ps1 {
  local lightgreen='\[\033[0;92m\]'
  local lightred='\[\033[0;95m\]'
  local endcolor='\[\033[00m\]'
  local user='\u'
  local host='\h'
  local dir='\W'
  local ifwork='$(if [[ `(pwd)` =~ /work/.+/ ]]; then echo "'
  local endif='"; fi)'
  local modified='git diff-index --quiet HEAD -- || echo "*"'
  local branch='git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\\\\\1/'
  local git="$ifwork(\`$branch\`\`$modified\`) $endif"
  echo "[$user@$host $lightred$dir$endcolor] $lightgreen$git$endcolor\$ "
}

function git() {
	local opt=""
	if [[ `pwd`/ =~ /work/ ]]; then
	 opt='-c user.email=bkrieger@smartperimeter.io'
	fi
	/usr/bin/git $opt "$@"
}

# Change defaults
export PS1=$(__git_ps1)
export LS_COLORS='di=96:fi=37:ln=31;47:pi=95:so=95:bd=95:cd=5:or=31:mi=0:ex=92'
export BROWSER="google-chrome-stable"
export TERM=xterm-256color
export LESS=-R

# Aliases
alias ls='ls --color=auto'
alias ssh='ssh -o ServerAliveInterval=100'
alias shutdown='sudo systemctl poweroff'
alias reboot='sudo systemctl reboot'
alias wifi-connect="nmtui-connect"
alias ri="ri -f ansi"
alias rx="rbenv exec"
alias rr="rbenv rehash"
alias bx="bundle exec"
alias gr="grep --exclude-dir vendor --exclude-dir .git -nr"

# SSH Agent
eval $(keychain --eval --quiet id_rsa)

# Rbenv
eval "$(rbenv init -)"

# added by travis gem
[ -f /home/ben/.travis/travis.sh ] && source /home/ben/.travis/travis.sh
