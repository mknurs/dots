#!/bin/sh

# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# vim
if command -v vim > /dev/null 2>&1;
then
  export VIMDIR='$HOME/.config/vim'
  export MYVIMRC='$HOME/.config/vim/vimrc'
  export VIMINIT='source $MYVIMRC'
  export EDITOR=vim
fi

# nnn
if command -v nnn > /dev/null 2>&1 && [ -f "$HOME/.config/nnn/nnnrc" ];
then
 . "$HOME/.config/nnn/nnnrc"
fi

# PATH
export PATH=$PATH:$HOME/.local/bin

# xdg
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_DATA_DIRS=/usr/local/share:/usr/share
export XDG_CONFIG_DIRS=/etc/xdg

# update window
shopt -s checkwinsize

# COLORS
bold="\[\e[1m\]"
f01="\[\e[31m\]"
f03="\[\e[33m\]"
esc="\[\e[0m\]"

# PROMPT
PS1="${bold}${f03}[\u@\h \W]\$${esc} "

# ROOT PROMPT
# PS1="${bold}${f01}[\u@\h \W]#${esc} "

case ${TERM} in
  alacritty)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

########################################################################
# alias
########################################################################
# base
alias ls='ls -lah --color=auto'
alias src='exec "$BASH"'

# pacman
if command -v pacman > /dev/null 2>&1;
then
  if command -v doas > /dev/null 2>&1;
  then
    alias pacu='doas pacman -Syyu --needed'
    alias pacr='doas pacman -Rcns'
  else
    alias pacu='sudo pacman -Syyu --needed'
    alias pacr='sudo pacman -Rcns'
  fi
  alias pacs='pacman -Ss'
  alias pacq='pacman -Qs'
  alias paci='pacman -Qii'
  alias paco='pacman -Qdtt'
  alias pace='pacman -Qqe'
fi

# repo
alias cfg='/usr/bin/git --git-dir=/home/mkn/.cfg/ --work-tree=/home/mkn/'

alias gitb='/usr/bin/git --git-dir=/home/mkn/.cfg/dots-base/ --work-tree=/home/mkn'
alias gitx='/usr/bin/git --git-dir=/home/mkn/.cfg/dots-x230/ --work-tree=/home/mkn'
alias gitm='/usr/bin/git --git-dir=/home/mkn/.cfg/m-scripts/ --work-tree=/home/mkn'
