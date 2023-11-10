#!/bin/bash

first_value=$(printenv | grep -m 1 "^LC_" | cut -d= -f2)

for var in $(printenv | grep "^LC_"); do
  value=$(echo "$var" | cut -d= -f2)

  if [ "$value" != "$first_value" ]; then
    echo "Error: LC_ environment variables have different values"
    exit 1
  fi
done

echo "All LC_ environment variables have the same value: $first_value"
