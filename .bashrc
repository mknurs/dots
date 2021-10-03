#!/bin/sh

# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# update window
shopt -s checkwinsize

# colors
bold="\[\e[1m\]"
f01="\[\e[31m\]"
f02="\[\e[32m\]"
f03="\[\e[33m\]"
f04="\[\e[34m\]"
esc="\[\e[0m\]"

# prompt
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]
then
  PS1="${bold}${f04}[\u@\h \W]\$${esc} "
else
  PS1="${bold}${f02}[\u@\h \W]\$${esc} "
fi

########################################################################
# alias
########################################################################
# base
alias ls='ls -lah --color=auto'
alias src='exec "$BASH"'

# pacman
if [ -n $(command -v pacman) ]
then
  if [ -n $(command -v doas) ]
  then
    alias pacu='doas pacman -Syyu --needed'
    alias pacr='doas pacman -Rcns'
    alias pacc='doas pacman -Scc'
  else
    alias pacu='sudo pacman -Syyu --needed'
    alias pacr='sudo pacman -Rcns'
    alias pacc='sudo pacman -Scc'
  fi
  alias pacs='pacman -Ss'
  alias pacq='pacman -Qs'
  alias paci='pacman -Qii'
  alias paco='pacman -Qdtt'
  alias pace='pacman -Qqe'
fi

[ -n $(command -v vim) ] && alias v='vim'
[ -n $(command -v nnn) ] && alias n='nnn'
[ -n $(command -v tmux) ] && alias t='tmux'

# repo
alias dot='/usr/bin/git --git-dir=/home/mkn/.dot/ --work-tree=/home/mkn/'
alias dots='dot status'
alias dota='dot add'
alias dotc='dot commit'

# git
if [ -n $(command -v git) ]
then
  alias ga='git add'
  alias gc='git commit'
fi
