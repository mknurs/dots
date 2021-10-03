# ~/.bash_profile

# environment
# path
export PATH="${PATH}:$HOME/bin"
# xdg
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"
# git
export DOT_GIT_DIR="$HOME/.dot"
export DOT_WORK_TREE="$HOME"
# vim
export MYVIMRUNTIME="$HOME/.config/vim"
export MYVIMRC="$HOME/.config/vim/vimrc"
export VIMINIT="source $MYVIMRC"
export EDITOR="vim"
# nnn
export NNN_OPTS="xUdHEA"
export NNN_BMS="b:$HOME;c:$XDG_CONFIG_HOME;d:$HOME/doc;m:/media;w:$HOME/www"
export NNN_PLUG="v:imgview"
export NNN_COLORS="#09090909"
export NNN_FCOLORS="0000090a00000000000000"

# source `.bashrc` if it exists
[ -f ~/.bashrc ] && . ~/.bashrc

# autostart `sway` on `tty1`
if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ] && [ -n "$(command -v sway)" ]
then
  exec sway 2> $HOME/.sway.log
fi
