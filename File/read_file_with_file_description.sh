#!/bin/bash
filename="myfile.txt"

exec 3< "$filename"
while read line <&3
do
    echo "Line: $line"
done
exec 3<&-   # Close file
