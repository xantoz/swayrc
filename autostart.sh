#!/bin/sh

#pgrep xss-lock > /dev/null || xss-lock -- physlock -s &
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &
