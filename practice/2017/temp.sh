read -p "Enter the word:" str

file1="data.txt"

count=$(grep -c  -w -o "$str" "$file1")

echo "$str occur $count times"