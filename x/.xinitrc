#!/bin/sh

systemctl --user import-environment DISPLAY &
xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --mode 1680x1050 --pos 3840x0 --rotate normal --output DP-3 --off --output DP-4 --off --output DP-5 --off
pgrep -x sxhkd > /dev/null || sxhkd &
nitrogen --restore &
$HOME/.config/polybar/launch.sh &
dunst &
nm-applet &
redshift-gtk &
playerctld daemon &
ckb-next &
~/.local/bin/brave &
discord --ignore-gpu-blocklist --disable-features=UseOzonePlatform --enable-features=VaapiVideoDecoder --use-gl=desktop --enable-gpu-rasterization --enable-zero-copy &
blueberry &
setxkbmap -option "caps:escape_shifted_capslock" &
xsetroot -cursor_name left_ptr &
picom &

exec bspwm
