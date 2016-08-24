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
alias wifi-reconnect='sudo systemctl restart NetworkManager'
alias wifi-connect="nmtui-connect"

# Custom functions
function palm-check() {
	ARG=$1
	STATE=$(xinput list-props 9 | grep -oP '(?<=\(294\):)(.*)' | xargs echo)

	case "$ARG" in
		on)
			xinput set-prop 9 294 1
			echo "disabled pointer while typing"
			;;
		off)
			xinput set-prop 9 294 0
			echo "enabled pointer while typing"
			;;
		toggle)
			if [[ "$STATE" == "0" ]]; then
				xinput set-prop 9 294 1
				echo "disabled pointer while typing"
			else
				xinput set-prop 9 294 0
				echo "enabled pointer while typing"
			fi
			;;
		*)
			echo "usage: palm-check [on|off|toggle]"
			exit 1
			;;
	esac
}

# SSH Agent
eval $(keychain --eval --quiet id_rsa)

# added by travis gem
[ -f /home/ben/.travis/travis.sh ] && source /home/ben/.travis/travis.sh
