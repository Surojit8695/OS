#!/bin/bash
# Remove all digits from file
file=$1
sed 's/[0-9]//g' "$file"
