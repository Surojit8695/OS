# Write a program in C that takes a month number as input and print the month name using a switch case..
#!/bin/bash

echo -n "Enter the month number (1-12): "
read month

case $month in
1) echo "January";;
2) echo "February";;
3) echo "March";;
4) echo "April";;
5) echo "May";;
6) echo "June";;
7) echo "July";;
8) echo "August";;
9) echo "September";;
10) echo "October";;
11) echo "November";;
12) echo "December";;
*) echo "Invalid Input...";;
esac

