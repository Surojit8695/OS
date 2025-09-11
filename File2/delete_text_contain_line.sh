#!/bin/bash
# Delete lines containing "exam"
file=$1
grep -v "exam" "$file"
