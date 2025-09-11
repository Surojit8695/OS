read -p "Enter the string :" str
len=${#str}
count=0
v=0
for((i=0;i<len;i++))
do
	f=${str:$i:1}
	echo "$f"
	if [ $f = "a" -o $f = "e" -o $f = "i" -o $f = "o" -o $f = "u" ]
	then
		((v++))
	fi
	((count++))
done
echo "Total character is: $count"
echo "Total vowel is: $v"
c=$(($count-$v))
echo "Total consonant character is: $c"
