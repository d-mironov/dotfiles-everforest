#!/bin/bash

PARENT_BAR="sys"
#PARENT_BAR_PID=$(pgrep -a "polybar" | grep "$PARENT_BAR" | cut -d" " -f1)
PARENT_BAR_PID=`ps aux | grep polybar | grep "$PARENT_BAR" | grep -v grep | awk '{print $2}'`

update_hooks() {
    while IFS= read -r id
    do
        polybar-msg -p "$id" hook picom-toggle $2 1>/dev/null 2>&1
    done < <(echo "$1")
}

PID=`ps aux | grep picom | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
    #echo "killing $PID"
    update_hooks "$PARENT_BAR_PID" 1
    sleep 0.01
    kill -9 $PID
else 
    update_hooks "$PARENT_BAR_PID" 2
    sleep 0.01
    picom --config ~/.config/picom/picom.conf &
fi

#if [[ $(pgrep picom) ]]; then
#    picom --config ~/.config/picom/picom.conf &
#else
#    pkill -f picom
#fi
