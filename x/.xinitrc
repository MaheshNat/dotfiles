#!/bin/sh

systemctl --user import-environment DISPLAY &
xrandr --output HDMI-0 --primary --mode 3440x1440 --pos 1920x1080 --rotate normal --output DP-0 --off --output DP-1 --mode 1920x1080 --pos 5360x1440 --rotate normal --output DP-2 --mode 1920x1080 --pos 2680x0 --rotate normal --output DP-3 --off --output DP-4 --off --output DP-5 --mode 1920x1080 --pos 0x1440 --rotate normal
pgrep -x sxhkd > /dev/null || sxhkd &
dwall -s street &
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
