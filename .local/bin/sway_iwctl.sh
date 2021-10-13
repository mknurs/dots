#!/bin/sh
# A simple wifi menu using fzy, sed and iwctl.

[ -n "$(command -v fzy)" ] || printf "fzy is a dependency!"
[ -n "$(command -v sed)" ] || printf "sed is a dependency!"
[ -n "$(command -v iwctl)" ] || printf "iwctl is a dependency!"

lines=$(($(tput lines) - 1))
station="wlan0"
# get list
iwctl station $station scan

list=$(iwctl station "$station" get-networks | tail +5 | sed 's/\x1b\[[0-9;]*m//g' | tr -ds ">" " " | cut -d" " -f2)

# prompt and get selection
sel=$(printf "%s\n" $list | fzy -l $lines)
# action
if [ -n "$sel" ]
then
  iwctl station "$station" connect "$sel"
  [ $? -eq 0 ] || $0
fi
