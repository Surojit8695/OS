#!/bin/bash
# Compare first and last lines of two files
f1=$1
f2=$2

first1=$(head -n 1 "$f1")
first2=$(head -n 1 "$f2")

last1=$(tail -n 1 "$f1")
last2=$(tail -n 1 "$f2")

if [ "$first1" = "$first2" ] && [ "$last1" = "$last2" ]; then
    echo "First and last lines are same"
else
    echo "First and/or last lines are different"
fi
