#!/bin/sh
# A simple logout menu using fzy.

command -v fzy > /dev/null || printf "fzy is a dependency!"

PROMPT="select: "
OPTIONS="\
Logout\n\
Poweroff\n\
Reboot\n\
Suspend\n\
Hibernate\n\
"

cmd=$(printf "$OPTIONS" | fzy -p "$PROMPT" )

case $cmd in
  Logout)
    swaymsg 'exit'
    ;;
  Poweroff)
    systemctl 'poweroff'
    ;;
  Reboot)
    systemctl 'reboot'
    ;;
  Suspend)
    systemctl 'suspend'
    ;;
  Hibernate)
    systemctl 'hibernate'
esac

