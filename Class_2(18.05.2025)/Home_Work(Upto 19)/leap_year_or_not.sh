# Write a script that takes a year and find whether it is a leap year or not.
echo -n "Enter the year:"
read year
y=$(expr $year % 4)
if [ $y -eq 0 ]
then
    echo "This is leap year"
else
    echo "This is not leap year"
fi
