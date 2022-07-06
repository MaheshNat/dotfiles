#!/bin/sh

systemctl --user import-environment DISPLAY

sxhkd &
picom --experimental-backends &
$HOME/.config/polybar/launch.sh &
nitrogen --restore &
xsetroot -cursor_name left_ptr &
dunst &
~/.local/bin/brave &
discord --ignore-gpu-blocklist --disable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy &
ckb-next &
nm-applet &
redshift-gtk &
playerctld daemon &
exec bspwm
