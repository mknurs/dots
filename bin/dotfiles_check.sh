#!/bin/sh
# A small script to be run as a pacman hook to update a list of
# explicitly installed packages and to check `diff` on some manually(!)
# tracked `/etc` files in `$TRACKD_ETC`. This script does not check
# bootloader files such as `loader.conf` or `<entry>.conf`.

PKGS_FILE="$XDG_CONFIG_HOME/pkgs"
GIT_CMD="git --git-dir=$DOT_GIT_DIR --work-tree=$DOT_WORK_TREE"
PAC_CMD="pacman -Qqe"
$PAC_CMD > $PKGS_FILE
if [ "$($GIT_CMD status -s "$PKGS_FILE")" ]
then
  $GIT_CMD commit "$PKGS_FILE" -m "autoupdate hook"
  printf "Package list updated. New commit prepared. Please push again.\n"
fi

ORIGIN_ETC="/etc/"
TRACKD_ETC="/home/mkn/.config/etcs/"
FLAG=true
for f in $(find ${TRACKD_ETC} -type f)
do
  origin_f="${ORIGIN_ETC}${f#$TRACKD_ETC}"
  if [ "$(diff "${f}" "${origin_f}")" ]
  then
    printf "Manually tracked %s seems different. You might want to update accordingly!\n" "${origin_f}"
    FLAG=false
  else
    printf "%s seems okay.\n" "${origin_f}"
  fi
done

if [ "$FLAG" ]
then
  printf "Done. All checks passed!\n"
else
  printf "Done. Some files need attention!\n"
fi
