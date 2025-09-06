echo -n "Enter the year:"
read n
k=$((n%4))
if [ $k -eq 0 ]
then
	echo "This is leap year"
else
	echo "This is not leap year"
fi
