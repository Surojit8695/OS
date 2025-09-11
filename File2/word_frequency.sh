#!/bin/bash
# Count frequency of given word in file
word=$1
file=$2
grep -o "\b$word\b" "$file" | wc -l
