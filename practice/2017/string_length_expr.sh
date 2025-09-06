#!/bin/bash

read -p "Enter the string: " str
len=$(expr length "$str")
echo "There are $len characters"

