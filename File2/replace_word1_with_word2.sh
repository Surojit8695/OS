#!/bin/bash
# Replace word1 with word2
file=$1
word1=$2
word2=$3
sed "s/$word1/$word2/g" "$file"
