#!/bin/bash

target_path="$1"

if [ ! -d "$target_path" ]; then
    echo "Error: path does not exist."
    exit 1
fi

for dir in "$1"/*; do
    dir_name=$(basename "$dir")
    num_elements=$(ls "$dir" | wc -l)
    echo "$num_elements" > "$dir_name.txt"
done
