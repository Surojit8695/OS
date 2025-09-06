echo -n "Enter the number of terms: "
read n
i=0
a=0
b=1

# Fibonacci sequence
while [ $i -lt $n ]
do
    fib[$i]=$a
    echo -n "$a "
    c=$((a + b))
    a=$b
    b=$c
    i=$((i + 1))
done

echo ""

# fibonacci elements are
echo "Fibonacci array:"
for ((i=0; i<n; i++))
do
    echo -n "${fib[$i]} "
done

echo ""

# Fibonacci last term 
p=`expr $n - 1`
k=${fib[$p]}  

echo "Max term of Fibonacci: $k"

echo "Non-Fibonacci numbers from 0 to $k:"
for (( i=0; i<=k; i++ ))
do
    flag=0
    for (( j=0; j<n; j++ ))
    do
        if [ $i -eq ${fib[$j]} ]
        then
            flag=1
            break
        fi
    done
    if [ $flag -eq 0 ]
    then
        echo -n "$i "
    fi
done
echo ""

