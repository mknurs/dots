#!/bin/sh
# A primitive file explorer using `fzy` and `ls`. Source this script to
# swiftly cd: . fzy_cd.sh
# An alias is recommended (alias e=". fzy_cd.sh". 

lines=$(($(tput lines) - 2))
clear
printf "%s\n" "$PWD"
#echo $(basename "$0")
disable=SC2012
sel="$(ls -1ahF --group-directories-first --color=auto | tail +2 | fzy -l $lines)"
if [ -d "$sel" ]
then
  cd "$sel" || exit
  e
elif [ "${sel: -4}" == ".pdf" ]
then
  "$BROWSER" "$sel" &
  e
elif [ -n "$sel" ]
then
  "$EDITOR" "$sel" &&
  e
fi
clear
