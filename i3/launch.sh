#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch your three specific bars
polybar left -c ~/.config/polybar/config.ini &
polybar center -c ~/.config/polybar/config.ini &
polybar right -c ~/.config/polybar/config.ini &

