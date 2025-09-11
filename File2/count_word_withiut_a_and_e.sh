#!/bin/bash
# Count words without 'a' or 'e'
file=$1
grep -o '\w\+' "$file" | grep -v '[aeAE]' | wc -l
