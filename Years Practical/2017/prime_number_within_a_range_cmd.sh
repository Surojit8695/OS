#echo -n "Enter the lower boundary: "
#read m
#echo -n "Enter the upper boundary: "
#read n
m=$1
n=$2
while [ $m -le $n ]
do
    count=0
    for ((i=1; i<=m; i++))
    do
        if [ $((m % i)) -eq 0 ]
        then
            count=`expr $count + 1`
        fi
    done

    if [ $count -eq 2 ]
    then
        echo -n "$m  "
    fi

    m=`expr $m + 1`
done
echo

