#echo -n "enter the number of row:"
#read k
k=$1
n=$(( (k + 1) / 2 ))
for((i=n;i>=1;i--))
do
	for((j=1;j<=i;j++))
	do
	echo -ne "*\t"
	done
	echo ""
done
for((i=2;i<=n;i++))
do
	for((j=1;j<=i;j++))
	do
	echo -ne "*\t"
	done
	echo ""
done

