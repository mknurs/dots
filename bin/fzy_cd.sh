#!/bin/sh
# A primitive file explorer using `fzy` and `ls`. Source this script to
# swiftly cd: . fzy_cd.sh
# An alias is recommended (alias e=". fzy_cd.sh". 

lines=$(($(tput lines) - 2))
clear
printf "%s\n" "$PWD"
#echo $(basename "$0")
disable=SC2012
sel="$(ls -lahF --group-directories-first --color=auto | tail +3 | fzy -l $lines | tr -s " " | cut -d" " -f9-)"
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
