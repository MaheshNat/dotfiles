#!/bin/sh

systemctl --user import-environment DISPLAY

xsetroot -cursor_name left_ptr &
exec bspwm
