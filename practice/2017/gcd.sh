echo -n "Enter the n1 and n2"
read n1
read n2
while [ $n2 -ne 0 ]
 do
 	a=$(($n1 % $n2))
 	n1=$n2
 	n2=$a
 done
 echo "Gcd is $n1"
