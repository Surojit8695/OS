echo -n "Enter the row:"
read n
k=1
for((i=1;i<=n-1;i++))
do
	for((j=1;j<=n-i;j++))
	do
		echo  -ne "\t"
	done
	
	for((j=1;j<=((2*i)-1);j++))
	do
		echo -ne "*\t"
	done
	
	echo  ""
done
for((i=n;i>=1;i--))
do
	for((j=1;j<=n-i;j++))
	do
		echo  -ne "\t"
	done
	
	for((j=1;j<=((2*i)-1);j++))
	do
		echo -ne "*\t"
	done
	
	echo  ""
done
