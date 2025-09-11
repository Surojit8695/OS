#!/bin/bash
# Compare line counts of two files
f1=$1
f2=$2

c1=$(wc -l < "$f1")
c2=$(wc -l < "$f2")

if [ $c1 -gt $c2 ]; then
    echo "$f1 has more lines"
else
    echo "$f2 has more lines"
fi
