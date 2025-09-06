limit=50    # Number of non-Fibonacci numbers to generate
count=0     # Counter for non-Fibonacci numbers

a=0
b=1

echo "First $limit non-Fibonacci numbers:"

while [ $count -lt $limit ]; do
    c=$((a + b))
    
    # Print numbers between Fibonacci terms a and b (exclusive)
    for ((i = a + 1; i < b && count < limit; i++)); do
        echo -n "$i "
        count=$((count + 1))
    done
    
    a=$b
    b=$c
done

echo ""

