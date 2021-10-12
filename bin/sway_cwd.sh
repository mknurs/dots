#!/bin/sh
# A simple script to check the working directory of the last focused
# window in sway. Uses `jq`.

app_id=$1
pid=$(swaymsg -t get_tree | jq -r --arg app_id "${app_id}" '.. | objects | select(.app_id==$app_id and .focused==true).pid?')
[ -n "${pid}" ] && cwd=$(readlink /proc/"$(pgrep --newest --parent "${pid}")"/cwd)
[ -n "${cwd}" ] && printf "%s\n" "${cwd}" || printf "%s\n" "${HOME}"
