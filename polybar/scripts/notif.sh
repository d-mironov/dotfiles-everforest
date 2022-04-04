#!/bin/bash

PARENT_BAR="sys"
#PARENT_BAR_PID=$(pgrep -a "polybar" | grep "$PARENT_BAR" | cut -d" " -f1)
PARENT_BAR_PID=`ps aux | grep polybar | grep "$PARENT_BAR" | grep -v grep | awk '{print $2}'`

update_hooks() {
    while IFS= read -r id
    do
        polybar-msg -p "$id" hook dunst $2 1>/dev/null 2>&1
    done < <(echo "$1")
}

IS_PAUSED=`dunstctl is-paused`
if [[ "false" == "$IS_PAUSED" ]]; then
    #echo "killing $PID"
    update_hooks "$PARENT_BAR_PID" 1
    sleep 0.01
    dunstctl set-paused true
else 
    update_hooks "$PARENT_BAR_PID" 2
    sleep 0.01
    dunstctl set-paused false
fi

#if [[ $(pgrep picom) ]]; then
#    picom --config ~/.config/picom/picom.conf &
#else
#    pkill -f picom
#fi
