#!/bin/sh

systemctl --user import-environment DISPLAY

setxkbmap -option "caps:escape_shifted_capslock"
xsetroot -cursor_name left_ptr &
exec bspwm
