#!/bin/bash
# Reverse content of file
echo "Enter filename:"
read file
if [ -f "$file" ]; then
    tac "$file"   # reverse line order
else
    echo "File not found"
fi
