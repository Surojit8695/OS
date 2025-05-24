# Write a script to find the maximum and minimum between 4 numbers.
echo "Enter the 4 numbers:"
read a
read b
read c
read d
if [ $a -eq $b -a $b -eq $c -a $c -eq $d ]
then
    echo "All numbers are equal"
else
    if [ $a -gt $b ]
    then
        if [ $a -gt $c ] 
        then
            if [ $a -gt $d ] 
            then
                max=$a
            else
                max=$d
            fi
        else
            if [ $c -gt $d ] 
            then
                max=$c
            else
                max=$d
            fi
        fi
    else
        if [ $b -gt $c ] 
        then
            if [ $b -gt $d ] 
            then
                max=$b
            else
                max=$d
            fi
        else
            if [ $c -gt $d ] 
            then
                max=$c
            else
                max=$d
            fi
        fi
    fi
    echo "Maximum element is: $max"
fi
