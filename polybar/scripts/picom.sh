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
    update_hooks "$PARENT_BAR_PID" 2
else
    update_hooks "$PARENT_BAR_PID" 1
fi
