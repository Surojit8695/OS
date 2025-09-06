#Non fibbonacci series
echo -n "Enter the upper limit: "
read limit

# Generate Fibonacci sequence up to 'limit' and store in an array
fib1=0
fib2=1
declare -A fib_set

while [ $fib1 -le $limit ]
do
    fib_set[$fib1]=1
    temp=$((fib1 + fib2))
    fib1=$fib2
    fib2=$temp
done

# Print non-Fibonacci numbers from 1 to 'limit'
echo "Non-Fibonacci numbers up to $limit are:"
for ((i=1; i<=limit; i++))
do
    if [ -z "${fib_set[$i]}" ]; then
        echo -n "$i "
    fi
done

echo

