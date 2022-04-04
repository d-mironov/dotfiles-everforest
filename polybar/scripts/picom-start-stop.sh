#!/bin/bash


if [[ "" !=  "$PID" ]]; then
    #echo "killing $PID"
    kill -9 $PID
else 
  picom --config ~/.config/picom/picom.conf
fi

#if [[ $(pgrep picom) ]]; then
#    picom --config ~/.config/picom/picom.conf &
#else
#    pkill -f picom
#fi
