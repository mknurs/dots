#!/bin/sh
# A simple logout menu using fzy.

command -v fzy > /dev/null || printf "fzy is a dependency!"
command -v tput > /dev/null || printf "tput is a dependency!"

OPTIONS="\
Logout\n\
Poweroff\n\
Reboot\n\
Suspend\n\
Hibernate\n\
"

printf "Chose action:\n"
cmd=$(printf $OPTIONS | fzy -l $(tput lines))

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

