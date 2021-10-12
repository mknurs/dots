#!/bin/sh
# A simple app launcher using fzy.

[ -n "$(command -v fzy)" ] || printf "fzy is a dependency!"
[ -n "$TERM" ] || printf "TERM is not set!"

PROMPT="select: "
DIRS="\
/usr/share/applications/*.desktop \
/usr/local/share/applications/*.desktop \
~/.local/share/applications/*.desktop\
"

get_app_list()
{
  FILES=$(grep -RLs "NoDisplay=true" $DIRS)
  list=$(grep -Poh -m 1 '(?<=^Name=).*' $FILES | sort | uniq)
}

get_file()
{
  sel=$1
  file=$(grep -ls "Name=$sel" $DIRS | head -1)
}

# get list
list=""
get_app_list $DIRS

# prompt and get selection
printf "$PROMPT"
sel=$(printf "$list" | fzy -p "$PROMPT")
if [ -n "$sel" ]
then
  file=""
  get_file $sel
  if [ $(grep "Terminal=true" $file) ];
  then
    cmd="alacritty -e $(grep -Po -m 1 "(?<=^Exec=).*?(?=(%|$))" $file)"
  else
    cmd="$(grep -Po -m 1 "(?<=^Exec=).*?(?=(%|$))" $file)"
  fi
  nohup $cmd >/dev/null 2>&1 &
  sleep 0.1
fi
