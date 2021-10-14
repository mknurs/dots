#
# ~/.bash_profile
#

# environment
# path
export PATH="${PATH}:$HOME/.local/bin"
# xdg
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"
# xdg user dirs
export XDG_DESKTOP_DIR="$HOME/doc"
export XDG_DOCUMENTS_DIR="$HOME/doc"
export XDG_DOWNLOAD_DIR="$HOME/dow"
export XDG_MUSIC_DIR="$HOME/dow"
export XDG_PICTURES_DIR="$HOME/dow"
export XDG_PUBLICSHARE_DIR="$HOME/dow"
export XDG_TEMPLATES_DIR="$HOME/dow"
export XDG_VIDEOS_DIR="$HOME/dow"
# git
# nvim
if [ -n $(command -v nvim) ]
then
  export EDITOR="nvim"
  export VISUAL="nvim"
fi
# firefox
if [ -n $(command -v firefox) ]
then
  export BROWSER="firefox"
fi
# git dot track
export DOTS_GIT_DIR="$HOME/.dots"
export DOTS_WORK_TREE="$HOME"
export DOTS_PKGS_LIST="$XDG_CONFIG_HOME/package_list"
export DOTS_GIT_CMD="git --git-dir=$DOTS_GIT_DIR --work-tree=$DOTS_WORK_TREE"

# dircolors
if [ -f "$XDG_CONFIG_HOME/dircolors" ]
then
  eval "$(dircolors $XDG_CONFIG_HOME/dircolors)"
fi

# source `.bashrc` if it exists
[ -f ~/.bashrc ] && . ~/.bashrc

# autostart `sway` on `tty1`
if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ] && [ -n "$(command -v sway)" ]
then
  # exec sway # 2> $HOME/.sway.log
  exec dbus-run-session sway 2> $HOME/.sway.log
fi
