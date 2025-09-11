n=$#
i=1
while [ $i -le $n ]
do
	eval f=\${$i}
	
	
	if [ -f "$f" ]
	then
		echo "$f  is a regular file"
		l=0
		
		while read line
		do
			l=$(($l +1))
		done < "$f"
		echo "Total number of line in $f file is: $l"
		echo
		echo
		
	elif [ -d "$f" ]
	then
		echo "$f is a directory"
		echo
		echo
	else
		echo "It is neither file of directory"
		echo
	fi
	i=$(($i+1))
done
