#!/bin/bash

log_directory="/var/log"
output_file="logs.log"


for logfile in "$log_directory"/*.log; do
    if [ -f "$logfile" ]; then
        last_line=$(tail -n 1 "$logfile")
        echo "$last_line" >> "$output_file"
    fi
done
