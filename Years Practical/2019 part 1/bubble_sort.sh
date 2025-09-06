echo -n "Enter the number of element:"
read n
declare -a a
for((i=0;i<n;i++))
do
	echo -n "A[$i]="
	read a[i]
done

#print the array
echo "Elements are:"
for((i=0;i<n;i++))
do
	echo "${a[i]}"
done

#Bubble sort
for((i=0;i<n;i++))
do
	flag=0
	for((j=0;j<n-i-1;j++))
	do		
		if [ ${a[$j]} -gt ${a[$(($j+1))]} ]
		then
			temp=${a[$j]}
			a[$j]=${a[$((j+1))]}
			a[$((j+1))]=$temp
			flag=1
		fi
	done
	
		if [ $flag -eq 0 ]
		then
			break;
		fi
	
done


#print the array after sorting
echo "After sorting Elements are:"
for((i=0;i<n;i++))
do
	echo "${a[i]}"
done
		
