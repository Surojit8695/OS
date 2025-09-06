echo -n "Enter the number of row:"
read n
k=$(($n % 2))

if [ $k -eq 0 ]
then
	echo "Even value is not possiable please enter odd value"
	exit 1;
fi
n=$(echo "($n + 1) /2"|bc)

for((i=1;i<=n;i++))
do
	for((j=1;j<=n-i;j++))
	do
		echo  -ne "\t"
	done
	for((j=1;j<=2*i-1;j++))
	do
		echo -ne "*\t"
	done
	echo ""
done

for((i=n-1;i>=1;i--))
do
	for((j=1;j<=n-i;j++))
	do
		echo  -ne "\t"
	done
	for((j=1;j<=2*i-1;j++))
	do
		echo -ne "*\t"
	done
	echo ""
done
