#!/bin/bash

if [ "$FOO" = "5" ] && [ "$BAR" = "1" ]; then
    echo "Error: script was stopped FOO = 5 and BAR = 1"
    exit 1
fi

file="fix.txt"
while true; do
    if [ -f "$file" ]; then
        echo "File was found"
        exit
    fi
done
