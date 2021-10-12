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
export DOTS_GIT_DIR="$HOME/.dot"
export DOTS_WORK_TREE="$HOME"
export DOTS_PKGS_LIST="$XDG_CONFIG_HOME/pkgs_list"
export DOTS_FILE_LIST="$XDG_CONFIG_HOME/file_list"
export DOTS_ETCS_DIR="$XDG_CONFIG_HOME/etcs"
export DOTS_GIT_CMD="git --git-dir=$DOTS_GIT_DIR --work-tree=$DOTS_WORK_TREE"

# fff
# if [ -n $(command -v fff) ]
# then
#   # Show/Hide hidden files on open.
# export FFF_HIDDEN=1
# # Use LS_COLORS to color fff.
# export FFF_LS_COLORS=1
# # Directory color [0-9]
# export FFF_COL1=1
# # Status background color [0-9]
# export FFF_COL2=2
# 
# # Selection color [0-9] (copied/moved files)
# export FFF_COL3=3
# 
# # Cursor color [0-9]
# export FFF_COL4=9
# 
# # Status foreground color [0-9]
# export FFF_COL5=0
# 
# # File Opener
# export FFF_OPENER="xdg-open"
# 
# # File Attributes Command
# export FFF_STAT_CMD="stat"
# 
# # Enable or disable CD on exit.
# export FFF_CD_ON_EXIT=1
# # Favourites (Bookmarks) (keys 1-9) (dir or file)
# export FFF_FAV1=$HOME
# export FFF_FAV2=$XDG_CONFIG_HOME
# export FFF_FAV3=$XDG_DOCUMENTS_DIR
# export FFF_FAV4=$XDG_DOWNLOAD_DIR
# export FFF_FAV5=/
# export FFF_FAV6=
# export FFF_FAV7=
# export FFF_FAV8=
# export FFF_FAV9=
# 
# fi
# # nnn
# if [ -n $(command -v nnn) ]
# then
#   export NNN_OPTS="cdDHoUx"
#   export NNN_BMS="b:$HOME;c:$XDG_CONFIG_HOME;d:$HOME/doc;m:/media;w:$HOME/www"
#   #export NNN_PLUG="v:imgview"
#   export NNN_COLORS="1456"
#   export NNN_OPENER="nvim"
#   BLK="01" CHR="01" DIR="05" EXE="09" REG="0f" HLN="06" SLN="0e" MIS="0f" ORP="0f" FIF="0f" SOC="0f" OTR="0f"
#   export NNN_FCOLORS="$BLK$CHR$DIR$EXE$REG$HLN$SLN$MIS$ORP$FIF$SOC$OTR"
# fi

# source `.bashrc` if it exists
[ -f ~/.bashrc ] && . ~/.bashrc

# autostart `sway` on `tty1`
if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ] && [ -n "$(command -v sway)" ]
then
  # exec sway 2> $HOME/.sway.log
  dbus-run-session sway 2> $HOME/.sway.log
fi
