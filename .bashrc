#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias bios='systemctl reboot --firmware-setup'

PS1='\[\e[01;30m\]\[[\e[01;31m\]\u\[\e[01;37m\]@\[\e[01;33m\]\h \[\e[01;32m\]\w\[\e[01;30m\]]\[\e[01;35m\]-> \[\e[01;37m\]'

# init node version manager
source /usr/share/nvm/init-nvm.sh
