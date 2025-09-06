echo "Enter the string:"
read str
temp=$str
len=${#temp}
reversed=""
echo "string length is:$len"
for((i=(len-1);i>=0;i--))
do
	reversed="$reversed${temp:$i:1}"
done
echo "reverse string is:$reversed"
if [ $str = $reversed ]
then
	echo "this is palindrome"
else
	echo "This is not palindrome"
fi

