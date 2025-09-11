echo -n "Enter the lower boundary: "
read low
echo -n "Enter the upper boundary: "
read up

while [ $low -le $up ]
do
    count=0
    for ((i=1; i<=low; i++))
    do
        if [ $((low % i)) -eq 0 ]
        then
            count=`expr $count + 1`
        fi
    done

    if [ $count -eq 2 ]
    then
        echo -n "$low  "
    fi

    low=`expr $low + 1`
done
echo

