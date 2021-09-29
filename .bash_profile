# ~/.bash_profile

[ -f ~/.bashrc ] && . ~/.bashrc

# autostart sway on tty1
if [ -z "${DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ] && [ -n "$(command -v sway)" ]
then
  exec sway > $HOME/.sway.log 2>&1
fi
