#!/bin/sh
# A simple and primitive fetch script with hardcoded ANSI art.

bld="$(tput bold)"
# f00="\e[30m"
# f01="\e[31m"
# f02="\e[32m"
# f03="\e[33m"
# f04="\e[34m"
# f05="\e[35m"
# f06="\e[36m"
# f07="\e[37m"
# f08="\e[90m"
# f09="\e[91m"
# f10="\e[92m"
# f11="\e[93m"
f12="$(tput setaf 12)"
# f13="\e[95m"
# f14="\e[96m"
# f15="\e[97m"
b00="$(tput setab 0)"
b01="$(tput setab 1)"
b02="$(tput setab 2)"
b03="$(tput setab 3)"
b04="$(tput setab 4)"
b05="$(tput setab 5)"
b06="$(tput setab 6)"
b07="$(tput setab 7)"
b08="$(tput setab 8)"
b09="$(tput setab 9)"
b10="$(tput setab 10)"
b11="$(tput setab 11)"
b12="$(tput setab 12)"
b13="$(tput setab 13)"
b14="$(tput setab 14)"
b15="$(tput setab 15)"
esc="$(tput sgr0)"
colors1="$b00  $b01  $b02  $b03  $b04  $b05  $b06  $b07  $esc"
colors2="$b08  $b09  $b10  $b11  $b12  $b13  $b14  $b15  $esc"

usrhst="$USER@$HOSTNAME"
device="$(cat /sys/devices/virtual/dmi/id/product_family)"
kernel="$(uname -r)"
memory="$(free -h | grep "^Mem" | tr -s ' ' | cut -d ' ' -f3)/$(free -h | grep "^Mem" | tr -s " " | cut -d " " -f2)"
pacman="$(pacman -Q | wc -l) ($(pacman -Qe | wc -l))"

clear
printf "${bld}${f12}"'       /\\\        '"${usrhst}${esc}\n"
printf "${bld}${f12}"'      /  \\\       '"${esc}${bld}device:${esc} ${device}\n"
printf "${bld}${f12}"'     /    \\\      '"${esc}${bld}kernel:${esc} ${kernel}\n"
printf "${bld}${f12}"'    /      \\\     '"${esc}${bld}memory:${esc} ${memory}\n"
printf "${bld}${f12}"'   /   __   \\\    '"${esc}${bld}pacman:${esc} ${pacman}\n"
printf "${bld}${f12}"'  /  _(  )_  \\\   '"${esc}${colors1}\n"
printf "${bld}${f12}"' /_--      --_\\\  '"${esc}${colors2}\n"
printf "\n"