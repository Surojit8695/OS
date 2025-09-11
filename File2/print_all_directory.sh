#!/bin/bash
# Print directory names longer than 5 characters
for item in *; do
    if [ -d "$item" ] && [ ${#item} -gt 5 ]; then
        echo "$item"
    fi
done
