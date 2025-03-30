#!/bin/sh
# Ugly-hack since we lack proper syncing, but sleep for 2 seconds to make sure things can run properly
sleep 1

#pgrep xss-lock > /dev/null || xss-lock -- physlock -s &
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &


export XDG_CURRENT_DESKTOP=sway

# TODO: Can all this stuff be handled by a sway systemd service?
if which dbus-update-activation-environment 2> /dev/null > /dev/null; then
    dbus-update-activation-environment --systemd DISPLAY WAYLAND_DISPLAY SWAYSOCK XDG_CURRENT_DESKTOP
    dbus-update-activation-environment --systemd XDG_SEAT XDG_SESSION_ID XDG_VTNR
fi

# # Import some various variables into the systemd user environment
# if which systemctl 2> /dev/null > /dev/null; then
#     systemctl --user import-environment WAYLAND_DISPLAY
#     systemctl --user import-environment DISPLAY
#     systemctl --user import-environment XDG_CURRENT_DESKTOP
#     systemctl --user import-environment XDG_SESSION_DESKTOP
#     systemctl --user import-environment SWAYSOCK
# fi
