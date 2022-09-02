#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Make tab completion case insensitive
bind "set completion-ignore-case on"

# Aliases for easy nav
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# Include local bash_profile if exists
if [ -f ~/.bash_profile.local ]; then
	. ~/.bash_profile.local
fi

# Add cargo bin to PATH
export PATH=$HOME/.cargo/bin:$PATH
export DENO_INSTALL="/home/yor/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec startx
fi
