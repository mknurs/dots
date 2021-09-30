#!/bin/sh

# if not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# vim
if [ -n $(command -v vim) ]
then
  export MYVIMRUNTIME='$HOME/.config/vim'
  export MYVIMRC='$HOME/.config/vim/vimrc'
  export VIMINIT='source $MYVIMRC'
  export EDITOR=vim
fi

# nnn
if [ -n $(command -v nnn) ] && [ -f "$HOME/.config/nnn/nnnrc" ]
then
 . "$HOME/.config/nnn/nnnrc"
fi

# path
export PATH=$PATH:$HOME/bin

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
f02="\[\e[32m\]"
f03="\[\e[33m\]"
f04="\[\e[34m\]"
esc="\[\e[0m\]"

# PROMPT
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]
then
  PS1="${bold}${f04}[\u@\h \W]\$${esc} "
else
  PS1="${bold}${f02}[\u@\h \W]\$${esc} "
fi

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
if [ -n $(command -v pacman) ]
then
  if [ -n $(command -v doas) ]
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

[ -n $(command -v vim) ] && alias v='vim'
[ -n $(command -v nnn) ] && alias n='nnn'
[ -n $(command -v tmux) ] && alias t='tmux'

# repo
alias cfg='/usr/bin/git --git-dir=/home/mkn/.cfg/ --work-tree=/home/mkn/'
alias cadd='cfg add'
alias ccom='cfg commit'

# git
if [ -n $(command -v git) ]
then
  alias ga='git add'
  alias gc='git commit'
fi

# TODO: somekind of self documentation for when the system is not yet fully setup.
# [ -n "$(command -v fzy)" ] || printf "Some usefull scripts might be missing. Check the README.\n"
