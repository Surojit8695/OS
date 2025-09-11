#!/bin/bash

echo "Directories in the current working directory:"

for item in *   # loop through everything in the current directory
do
    if [ -d "$item" ]   # check if it's a directory
    then
        echo "$item"
    fi
done
