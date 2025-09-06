echo -n "Enter the string:"
read str
len=${#str}
if [ $len -lt 10 ]
then
echo "String is less than 10 character"
else
echo "String is grater than 10 character"
fi
