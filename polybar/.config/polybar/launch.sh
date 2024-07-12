#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar main -c $(dirname $0)/scaled_config.ini &

# left config
if [[ $(xrandr -q | grep 'HDMI-0 connected') ]]; then
    polybar external -c $(dirname $0)/left_config.ini &
fi

# top config
if [[ $(xrandr -q | grep 'DP-2 connected') ]]; then
    polybar external-2 -c $(dirname $0)/config.ini &
fi

# right config
if [[ $(xrandr -q | grep 'DP-1 connected') ]]; then
    polybar external-3 -c $(dirname $0)/config.ini &
fi