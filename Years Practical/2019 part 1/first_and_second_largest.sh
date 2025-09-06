echo -n "Enter the number of element:"
read n
if [ "$n" -lt 2 ]
then
    echo "Please enter at least two elements to find the first and second maximum."
    exit 1
fi

for((i=0;i<n;i++))
do
	echo -n "A[$i]="
	read a[$i]
done
# print the element
for((i=0;i<n;i++))
do
	echo "${a[$i]}"
done

if [ ${a[0]} -gt ${a[1]} ]
then
	first=${a[0]}
	second=${a[1]}
else
	first=${a[1]}
	second=${a[0]}
fi

for((i=2;i<n;i++))
do
if [ ${a[$i]} -gt $first ]
then
	second=$first
	first=${a[$i]}
elif [ ${a[$i]} -gt $second -a  ${a[$i]} -ne $first ]
then
second=${a[$i]}
fi
done

echo "First maximum number is: $first"
echo "Second maximum number is:$second"
