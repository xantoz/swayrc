#!/bin/sh

echo "Michiru specific autostart.sh"


# TODO: Should perhaps be part of a sway-session.target thing or so in the future?
systemctl --user start blueman-applet
systemctl --user start fcitx5
systemctl --user start pasystray


/usr/libexec/fcitx5-wayland-launcher &
