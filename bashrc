#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\n\[\033[1;34m\][ \u@\h \l \d \A]\n\[\033[1;30m\][ History: \!, Befehl: \# ]\n\[\033[0;32m\][ \w ]\n\[\033[0;32m\]\$\[\033[0m\] '
PS2='> '
PS3='> '
PS4='+ '

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
export PATH="$PATH:/home/addisaden/.gem/ruby/2.2.0/bin"
