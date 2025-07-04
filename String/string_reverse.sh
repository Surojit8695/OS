echo -n "Enter a string: "
read str

reversed=$(echo "$str" | rev)
echo "Reversed string: $reversed"

