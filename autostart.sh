#!/bin/sh

#pgrep xss-lock > /dev/null || xss-lock -- physlock -s &
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &

# Import some various variables into the systemd user environment
if which systemctl 2> /dev/null > /dev/null; then
    systemctl --user import-environment WAYLAND_DISPLAY
    systemctl --user import-environment DISPLAY
fi
