#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
[ -r $HOME/.byobu/prompt ] && . $HOME/.byobu/prompt   #byobu-prompt#
