#!/bin/bash
# Script to convert file content to uppercase or lowercase

echo -n "Enter filename: "
read filename

# Check if file exists
if [ ! -f "$filename" ]; then
    echo " File not found!"
    exit 1
fi

echo "Choose an option:"
echo "1. Convert to UPPERCASE"
echo "2. Convert to lowercase"
read choice

case $choice in
    1)
        echo "Converting to UPPERCASE..."
        tr 'a-z' 'A-Z' < "$filename" > upper_output.txt
        echo "Saved as upper_output.txt"
        ;;
    2)
        echo "Converting to lowercase..."
        tr 'A-Z' 'a-z' < "$filename" > lower_output.txt
        echo "Saved as lower_output.txt"
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac
