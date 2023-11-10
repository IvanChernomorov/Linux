#!/bin/bash

filename=$1
timeframe=$2

start_time=$(date +%s)
end_time=$((start_time + timeframe))

while [ $(date +%s) -lt $end_time ]; do
    current_time=$(date "+[%d.%m](http://dd.mm/).%y %H:%M")
    loadavg=$(cat /proc/loadavg)

    echo "$current_time = <$loadavg>" >> $filename
    sleep 1
done
