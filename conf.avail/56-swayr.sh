#!/bin/sh

if systemctl --user list-unit-files swayrd.service &>/dev/null; then
    # Systemd service exists
    # TODO: Socket-activated swayrd?
    # TODO: Or just pulled into a a sway-session.target thingy? Although in that case the below is just a no-op
    sleep 3                     # Sleep because we have race conditions (wait for WAYLAND_DISPLAY etc. etc. to get set in systemd environment)
    systemctl --user start swayrd.service
else
    if ! pgrep swayrd > /dev/null; then
        swayrd &
    fi
fi
