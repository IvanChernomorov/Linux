#!/bin/bash

for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "$file => not found"
        continue
    fi

    line_count=$(wc -l < "$file")
    echo "$file => $line_count"
done
