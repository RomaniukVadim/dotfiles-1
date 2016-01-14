#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH=~/bin:$PATH

alias ls='ls --color=auto'
PS1='\[\e[0;36m\]\t\[\e[m\] [\W]> '
