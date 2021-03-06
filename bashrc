#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function getGITBranch {
  (git branch 2> /dev/null) | grep '*' | sed -r 's/^\s*\*\s+(.+)$/ [ Git: \1 ]/g'
}

PS1='\n\[\033[1;34m\][ \u@\h \d \A ]\[\033[0;32m\]$(getGITBranch)\n\[\033[1;30m\][ History: \!, Befehl: \#, Battery: $(cat /sys/class/power_supply/BAT0/capacity)% $(cat /sys/class/power_supply/BAT0/status) ]\n\[\033[0;32m\][ \w ]\n\[\033[0;31m\]$(who)\n\[\033[0;32m\]\$\[\033[0m\] '
PS2='> '
PS3='> '
PS4='+ '

alias ls="ls --color=auto"

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
complete -C "/usr/bin/aws_completer" aws
source $HOME/.pathrc
