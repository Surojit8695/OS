# # Write a script to find the maximum and minimum between 3 numbers.
echo "Enter the 3 numbers:"
read x
read y
read z

if [ $x -eq $y -a $y -eq $z ]
then
    echo "All numbers are equal"
else
    if [ $x -gt $y ]
    then
        if [ $x -gt $z ]
        then
            max=$x
            echo "The maximum number is $max"
        else
            max=$z
            echo "The maximum number is $max"
        fi
    else
        if [ $y -gt $z ]
        then
            max=$y
            echo "The maximum number is $max"
        else
            max=$z
            echo "The maximum number is $max"
        fi
    fi
fi
