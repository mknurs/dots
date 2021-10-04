#!/bin/sh
# A simple window selection menu for sway using jq and fzy.

[ -n "$(command -v jq)" ] || printf "jq is a dependency!\n"
[ -n "$(command -v fzy)" ] || printf "fzy is a dependency!\n"
[ -n "$(command -v tput)" ] || printf "tput is a dependency!\n"

LINES="$(expr $(tput lines) - 2)"
PROMPT="Select window:\n"

# get list
list="$(swaymsg -t get_tree | jq -r '.. | objects | select(.type=="con" and .name!=null) | (.id|tostring) + " " + (.name)')"

# prompt and get selection
printf "$PROMPT"
sel=$(printf "$list" | fzy -l $LINES | cut -d" " -f1)

# action
if [ -n "$sel" ]
then
  swaymsg [con_id="$sel"] focus
fi
