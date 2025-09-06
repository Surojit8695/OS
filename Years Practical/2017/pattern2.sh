echo "Enter the number of rows:"
read n #5

# Calculate mid point
mid=$(( (n + 1) / 2 ))

# Top half
for ((i=mid; i>=1; i--))
do
    for ((j=1; j<=i; j++))
    do
        echo -ne "*\t"
    done
    echo ""
done

# Bottom half
for ((i=2; i<=n - mid + 1; i++))
do
    for ((j=1; j<=i; j++))
    do
        echo -ne "*\t"
    done
    echo ""
done

