#Write a shell script to check whether a given number n is #divisible by 11 without actually dividing it by 11.
echo -n "Enter the number:"
read num
while [ $num -ne 0 ]
do
	num=`expr $num - 11`
	if [ $num -lt 0 ]
	then 
	break
	fi
done
if [ $num -lt 0 ]
then
	echo "Number is not divisiable by 11"
else
	echo "Number is  divisiable by 11"
fi
