#!/bin/bash

# Quadratic equation solver

echo -n "Enter coefficient a: "
read a
echo -n "Enter coefficient b: "
read b
echo -n "Enter coefficient c: "
read c

# If a=0, it’s not a quadratic equation
if [ $a -eq 0 ]; then
    echo "Not a quadratic equation (a cannot be 0)."
    exit 1
fi

# Calculate discriminant: D = b^2 - 4ac
D=$((b*b - 4*a*c))

if [ $D -gt 0 ]; then
    echo "Discriminant = $D (Real and distinct roots)"
    # Using bc for floating-point square root
    sqrtD=$(echo "scale=5; sqrt($D)" | bc)
    root1=$(echo "scale=5; (-$b + $sqrtD) / (2 * $a)" | bc)
    root2=$(echo "scale=5; (-$b - $sqrtD) / (2 * $a)" | bc)
    echo "Root1 = $root1"
    echo "Root2 = $root2"

elif [ $D -eq 0 ]; then
    echo "Discriminant = $D (Real and equal roots)"
    root=$(echo "scale=5; -$b / (2 * $a)" | bc)
    echo "Root = $root"

else
    echo "Discriminant = $D (Complex roots)"
    absD=$(echo "scale=5; sqrt(-$D)" | bc)
    real=$(echo "scale=5; -$b / (2 * $a)" | bc)
    imag=$(echo "scale=5; $absD / (2 * $a)" | bc)
    echo "Root1 = $real + ${imag}i"
    echo "Root2 = $real - ${imag}i"
fi
