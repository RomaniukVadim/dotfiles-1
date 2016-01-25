#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=~/bin:$PATH

alias ls='ls --color=auto'
PS1='\[\e[1;30m\]aki \[\e[0;32m\]\W\[\e[m\] > '
