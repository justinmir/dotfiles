#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/material"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

screens=$(xrandr --listactivemonitors | grep -v "Monitors" | cut -d" " -f6)

if [[ $screens == "DP-2" ]]; then
    polybar -q main -c "$DIR"/config.ini &
else
    polybar -q alt -c "$DIR"/config.ini &
fi

#polybar -c "$DIR"/config.ini &
