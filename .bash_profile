# ~/.bash_profile

[ -f ~/.bashrc ] && . ~/.bashrc

# autostart sway on tty1
if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ] && [ -n "$(command -v sway)" ]
then
  exec sway -d 2> $HOME/.sway.log
fi
