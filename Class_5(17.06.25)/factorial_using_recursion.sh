#!/bin/bash

Factirial() {
	num=$1
	
	if [ $num -eq 0  -o  $num -eq 1 ]; then
		echo 1
	else
		n1=$((num - 1))
		rec_result=$(Factirial $n1)
		f=$((num * rec_result))
		echo $f
	fi
}

echo -n "Enter the number: "
read n

result=$(Factirial $n)
echo "Factorial of $n is: $result"

