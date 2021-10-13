#!/bin/sh
# A simple and primitive fetch script with hardcoded ANSI art.

colors1="\
$(tput setab 0)  \
$(tput setab 1)  \
$(tput setab 2)  \
$(tput setab 3)  \
$(tput setab 4)  \
$(tput setab 5)  \
$(tput setab 6)  \
$(tput setab 7)  \
$(tput sgr0)"

if [ $(tput colors) -eq 8 ]
then
  colors2="\
$(tput blink)\
$(tput setab 0)  \
$(tput setab 1)  \
$(tput setab 2)  \
$(tput setab 3)  \
$(tput setab 4)  \
$(tput setab 5)  \
$(tput setab 6)  \
$(tput setab 7)  \
$(tput sgr0)"

else
  colors2="\
$(tput setab 8)  \
$(tput setab 9)  \
$(tput setab 10)  \
$(tput setab 11)  \
$(tput setab 12)  \
$(tput setab 13)  \
$(tput setab 14)  \
$(tput setab 15)  \
$(tput sgr0)"
fi

usrhst="$USER@$HOSTNAME"
device="$(cat /sys/devices/virtual/dmi/id/product_family)"
kernel="$(uname -r)"
memory="$(free -h | grep "^Mem" | tr -s ' ' | cut -d ' ' -f3)/$(free -h | grep "^Mem" | tr -s " " | cut -d " " -f2)"
pacman="$(pacman -Q | wc -l) ($(pacman -Qe | wc -l))"

clear
printf "$(tput setaf 4)"'       /\\\        '"${usrhst}$(tput sgr0)\n"
printf "$(tput setaf 4)"'      /  \\\       '"$(tput sgr0)device: ${device}\n"
printf "$(tput setaf 4)"'     /    \\\      '"$(tput sgr0)kernel: ${kernel}\n"
printf "$(tput setaf 4)"'    /      \\\     '"$(tput sgr0)memory: ${memory}\n"
printf "$(tput setaf 4)"'   /   __   \\\    '"$(tput sgr0)pacman: ${pacman}\n"
printf "$(tput setaf 4)"'  /  _(  )_  \\\   '"${colors1}\n"
printf "$(tput setaf 4)"' /_--      --_\\\  '"${colors2}\n"
printf "\n"
