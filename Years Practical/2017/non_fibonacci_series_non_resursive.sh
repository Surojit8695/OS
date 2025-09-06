echo -n "Enter the range: "
read n

a=0
b=1
s=0

echo "Fibonacci numbers up to $n:"
while [ "$a" -le "$n" ]
do
    echo -n "$a "
    fib[$s]=$a
    s=$((s + 1))
    fn=$((a + b))
    a=$b
    b=$fn
done

echo ""

total_fib=$s  # Total number of Fibonacci numbers generated(basically fib array length)

# Display all non-Fibonacci numbers from 0 to n
echo "Non-Fibonacci numbers from 0 to $n:"
for (( i=2; i<=n; i++ ))
do
    flag=0
    for (( j=0; j<total_fib; j++ ))
    do
        if [ "$i" -eq "${fib[$j]}" ]; then
            flag=1
            break
        fi
    done
    if [ "$flag" -eq 0 ]; then
        echo -n "$i "
    fi
done

echo ""

