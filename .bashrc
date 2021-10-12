#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s checkwinsize

# auto vi mode
set -o vi

# prompt and title
PS1="\001$(tput bold)$(tput setaf 5)\002${PS1}\001$(tput sgr0)\002"

case ${TERM} in
  alacritty*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
esac

########################################################################
# commands and alias
########################################################################
# source
alias src="exec "$BASH""

# ls
eval "$(dircolors $XDG_CONFIG_HOME/dircolors)"
alias l="ls -lahF --group-directories-first --color=auto"

# pacman
if [ -n $(command -v pacman) ]
then
  pacman_cmd="pacman --config "$XDG_CONFIG_HOME/pacman/pacman.conf""
  alias pacu="sudo $pacman_cmd -Syyu --needed"
  alias pacr="sudo $pacman_cmd -Rcns"
  alias pacc="sudo $pacman_cmd -Scc"
  alias pacs="$pacman_cmd -Ss"
  alias pacq="$pacman_cmd -Qs"
  alias paci="$pacman_cmd -Qii"
  alias paco="$pacman_cmd -Qdtt"
  alias pace="$pacman_cmd -Qqe"
fi

if [ -n $(command -v nvim) ]
then
  alias v="nvim"
  alias n="nvim"
fi
[ -n $(command -v tmux) ] && alias t="tmux"

# git
if [ -n $(command -v git) ]
then
  alias ga='git add'
  alias gc='git commit'
fi

# repo
if [ -n $DOT_GIT_DIR ]
then
  alias dot="$DOTS_GIT_CMD"
  alias dots="dot status"
  alias dota="dot add"
  alias dotc="dot commit"
fi

# explorer
alias e=". $HOME/bin/fzy_cd.sh"
