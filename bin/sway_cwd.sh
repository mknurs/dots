#!/bin/sh
# A simple script to check the working directory of the last focused
# window in sway. Uses `jq`.

pid=$(swaymsg -t get_tree | jq -r '.. | objects | select(.type=="con" and .focused==true and .app_id!="firefox").pid?')
ppid=$(pgrep --newest --parent "${pid}")
readlink /proc/"${ppid}"/cwd || echo "${HOME}"
