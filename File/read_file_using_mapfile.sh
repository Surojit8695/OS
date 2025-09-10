#!/bin/bash
filename="myfile.txt"

mapfile -t lines < "$filename"

for line in "${lines[@]}"
do
    echo "Line: $line"
done
