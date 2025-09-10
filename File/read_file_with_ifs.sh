#!/bin/bash
filename="myfile.txt"

while IFS= read -r line
do
    echo "Line: $line"
done < "$filename"
