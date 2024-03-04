#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.xdg_env
source /usr/share/git/completion/git-completion.bash
source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash

alias ls='ls --color=auto'
alias sway='~/.config/sway/swayrc'  

PS1='[\u@\h \W]\$ '
