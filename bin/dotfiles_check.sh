#!/bin/sh
# A small script to be run as a git hook to update a list of explicitly
# installed packages.

pacman -Qqe > "$DOTS_PKGS_FILE"
if [ "$($DOTS_GIT_CMD status -s "$DOTS_PKGS_FILE")" ]
then
  $DOTS_GIT_CMD commit "$DOTS_PKGS_FILE" -m "autoupdate hook"
  printf "Package list updated. New commit prepared. Please push again.\n"
fi
