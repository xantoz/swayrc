#!/bin/sh

xss-lock -- physlock -s &
[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources &
