#!/bin/bash

# Input array
echo -n "Enter the number of elements: "
read n

i=0
while [ $i -lt $n ]
do
    echo -n "A[$i]= "
    read arr[i]
    i=$((i + 1))
done

# Bubble Sort using while loops
i=0
while [ $i -lt $((n - 1)) ]
do
    j=0
    while [ $j -lt $((n - i - 1)) ]
    do
        if [ ${arr[j]} -gt ${arr[$((j + 1))]} ]; then
            # Swap
            temp=${arr[j]}
            arr[j]=${arr[$((j + 1))]}
            arr[$((j + 1))]=$temp
        fi
        j=$((j + 1))
    done
    i=$((i + 1))
done

# Print sorted array
echo "Sorted array:"
i=0
while [ $i -lt $n ]
do
    echo -n "${arr[i]} "
    i=$((i + 1))
done
echo
#!/bin/bash

# Input array
echo -n "Enter the number of elements: "
read n

i=0
while [ $i -lt $n ]
do
    echo -n "A[$i]= "
    read arr[i]
    i=$((i + 1))
done

# Bubble Sort using while loops
i=0
while [ $i -lt $((n - 1)) ]
do
    j=0
    while [ $j -lt $((n - i - 1)) ]
    do
        if [ ${arr[j]} -gt ${arr[$((j + 1))]} ]; then
            # Swap
            temp=${arr[j]}
            arr[j]=${arr[$((j + 1))]}
            arr[$((j + 1))]=$temp
        fi
        j=$((j + 1))
    done
    i=$((i + 1))
done

# Print sorted array
echo "Sorted array:"
i=0
while [ $i -lt $n ]
do
    echo -n "${arr[i]} "
    i=$((i + 1))
done
echo
