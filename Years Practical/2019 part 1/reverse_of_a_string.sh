echo -n "Enter the string:"
read str
len=${#str}
echo "$len"
reversed=""
for((i=(len-1);i>=0;i--))
do
	reversed="$reversed${str:$i:1}"
done
echo "$reversed"
	
