#!/bin/sh
# A simple logout menu using fzy.

[ -n "$(command -v fzy)" ] || printf "fzy is a dependency!\n"
[ -n "$(command -v tput)" ] || printf "tput is a dependency!\n"

lines=$(($(tput lines) - 1))

options="\
Logout\n\
Poweroff\n\
Reboot\n\
Suspend\n\
Hibernate\n\
"

cmd=$(printf "$options" | fzy -l "$lines")

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

