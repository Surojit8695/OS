echo -n "Enter the row:"
read n
k=1
for((i=n;i>=1;i--))
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
