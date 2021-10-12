#!/bin/sh
# A small script to be run as a git hook to update a list of explicitly
# installed packages.

printf "Starting dotfiles_check.sh ...\n"

# check the tracked package list
printf "Updating %s ...\n" "$DOTS_PKGS_LIST"
pacman -Qqe > "$DOTS_PKGS_LIST"
if [ "$($DOTS_GIT_CMD status -s "$DOTS_PKGS_LIST")" ]
then
  $DOTS_GIT_CMD commit "$DOTS_PKGS_LIST" -m "autoupdate hook"
  printf "%s updated. New commit prepared. Please push again ...\n"
else
  printf "%s is up to date ...\n" "$DOTS_PKGS_LIST"
fi

printf "Reading %s ...\n" "$DOTS_FILE_LIST"
# make directory if it doesn't exist
[ -d "$DOTS_ETCS_DIR" ] || mkdir "$DOTS_ETCS_DIR"
# loop through file list
while read file
do
  cp_file="$DOTS_ETCS_DIR/$(basename $file)"
  # cp if it doesn't exits
  [ -f "$cp_file" ] || cp "$file" "$cp_file"
  # report if it's different
  diff "$file" "$cp_file"
  [ $? -ne 0 ] && printf "%s needs attention.\n" "$file" || printf "%s is okay ...\n" "$file"
done < $DOTS_FILE_LIST
