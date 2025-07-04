echo -n "Enter the row:"
read n
k=1
for((i=1;i<=n;i++))
do
	for((j=1;j<=n-i;j++))
	do
		echo  -ne "\t"
	done
	
	for((j=1;j<=i;j++))
	do
		echo -ne "*\t"
	done
	
	echo  ""
done
