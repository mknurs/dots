#!/bin/sh

pacman -Qqe > $DOTS_PKGS_LIST

if [ -n "$($DOTS_GIT_CMD status -s $DOTS_PKGS_LIST)" ]
then
  printf "%s\n" "$(tput bold)$(tput setaf 2)Package list changed, autocommit made, please push again.$(tput sgr0)"
  $DOTS_GIT_CMD commit -m "autocommit" $DOTS_PKGS_LIST
fi

