# Write a Script that takes a month number the total number of days upto that month using switch case.
# Take a month number as input from the user (for example: 1 for January, 2 for February, ..., 12 for December).
# Use a switch statement to calculate the total number of days from January 1st up to the end of that month.
# For example: If the user enters 3 (March), the output should be the total number of days in January + February + March, 
# which is 31 + 28 + 31 = 90 (assuming it's not a leap year).
    
echo -n "Enter the number(1-12):"
read month
totalDays=0
case $month in
1) totalDays=`expr $totalDays + 31`;;
2) totalDays=`expr $totalDays + 31 + 28`;;
3) totalDays=`expr $totalDays + 31 + 28 + 31`;;
4) totalDays=`expr $totalDays + 31 + 28 + 31 + 30`;;
5) totalDays=`expr $totalDays + 31 + 28 + 31 + 30 + 31`;;
6) totalDays=`expr $totalDays + 31 + 28 + 31 + 30 + 31 + 30`;;
7) totalDays=`expr $totalDays + 31 + 28 + 31 + 30 + 31 + 30 + 31`;;
8) totalDays=`expr $totalDays + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31`;;
9) totalDays=`expr $totalDays + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30`;;
10) totalDays=`expr $totalDays + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31`;;
11) totalDays=`expr $totalDays + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30`;;
12) totalDays=`expr $totalDays + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + 31`;;
*) echo "Wrong choice";exit 1;;
esac
echo "Total days till month $month is $totalDays"

