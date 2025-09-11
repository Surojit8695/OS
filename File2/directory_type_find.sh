#!/bin/bash
# List only directories in current working directory
for item in *; do
    if [ -d "$item" ]; then
        echo "$item"
    fi
done
