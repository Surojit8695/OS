#!/bin/bash
# Reverse content of file
echo "Enter filename:"
read file
if [ -f "$file" ]; then
    tac "$file"   # reverse line order "tac" print the file in reverse order
 else
    echo "File not found"
fi
