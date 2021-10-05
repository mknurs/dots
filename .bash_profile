#
# ~/.bash_profile
#

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
# nnn
if [ -n $(command -v nnn) ]
then
  export NNN_OPTS="cdDHoU"
  export NNN_BMS="b:$HOME;c:$XDG_CONFIG_HOME;d:$HOME/doc;m:/media;w:$HOME/www"
  #export NNN_PLUG="v:imgview"
  export NNN_COLORS="#05090c06;5146"
  export NNN_OPENER="nvim"
  BLK="01" CHR="01" DIR="05" EXE="09" REG="0f" HLN="06" SLN="0e" MIS="0f" ORP="0f" FIF="0f" SOC="0f" OTR="0f"
  export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HLN$SLN$MIS$ORP$FIF$SOC$OTR"
fi

# source `.bashrc` if it exists
[ -f ~/.bashrc ] && . ~/.bashrc

# autostart `sway` on `tty1`
if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ] && [ -n "$(command -v sway)" ]
then
  exec sway 2> $HOME/.sway.log
fi
