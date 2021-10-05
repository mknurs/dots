#!/bin/sh
# A simple script to check the working directory of the last focused
# window in sway. Uses `jq`.

pid=$(swaymsg -t get_tree | jq -r '.. | objects | select(.type=="con" and .focused==true and .app_id!="firefox").pid?')
if [ -n "${pid}" ]
then
  ppid=$(pgrep --newest --parent "${pid}")
  readlink /proc/"${ppid}"/cwd
else
  printf "%s\n" "${HOME}"
fi
