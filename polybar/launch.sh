#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar left &
polybar mid &
polybar right &
polybar right2 &
polybar left2 &
polybar mid2 &
polybar title &
polybar title2 &
polybar window &
polybar window2 &
polybar sys &
polybar sys2 &
#polybar title &

echo "Polybar started..."
