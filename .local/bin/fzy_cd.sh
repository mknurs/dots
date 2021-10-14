#!/bin/sh
# A primitive file explorer using `fzy` and `ls`. Source this script to
# swiftly cd: . fzy_cd.sh
# An alias is recommended (alias e=". fzy_cd.sh". 

[ -n "$(command -v fzy)" ] || printf "fzy is a dependency!\n"
[ -n "$(command -v tput)" ] || printf "tput is a dependency!\n"

lines=$(($(tput lines) - 2))
clear
# df -h -t ext4
printf "%s\n" "$PWD"
#echo $(basename "$0")
# shellcheck disable=SC2012
sel="$(ls -1ahF --group-directories-first --color=auto | tail +2 | fzy -l $lines | cut -d" " -f1-)"
if [ -n "$sel" ]
then
  if [ -d "$sel" ]
  then
    cd "$sel" || exit
    e
  else
    "$EDITOR" "${sel%[\*@]}" &&
    e
  fi
fi
clear
