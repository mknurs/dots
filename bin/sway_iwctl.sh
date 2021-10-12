#!/bin/sh
# A simple wifi menu using fzy, sed and iwctl.

# iwctl station wlan0 get-networks | tr -s "[:blank:]" | tr -d "*" | tail +5 | fzy
# TODO port to iw
[ -n "$(command -v fzy)" ] || printf "fzy is a dependency!"
[ -n "$(command -v sed)" ] || printf "sed is a dependency!"
[ -n "$(command -v iwctl)" ] || printf "iwctl is a dependency!"

PROMPT="select: "
STATION="wlan0"
# get list
iwctl station $STATION scan

list=$(iwctl station wlan0 get-networks | tail +5 | sed 's/\x1b\[[0-9;]*m//g' | tr -ds ">" " " | cut -d" " -f2)
# list=$(iwctl station wlan0 get-networks | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | tail +5 | tr -s " " | cut -d " " -f2,3)
# list=$(iwctl station wlan0 get-networks | tr -s "[:blank:]" | tr -d "*" | tail +5)

# prompt and get selection
sel=$(printf "%s\n" $list | fzy -p "$PROMPT" )
# action
if [ -n "$sel" ]
then
  iwctl station $STATION connect $sel
  [ $? -eq 0 ] || $0
fi
