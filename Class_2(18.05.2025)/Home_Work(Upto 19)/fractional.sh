#In this code we will learn how to calcuate division wwith fractional value
#in binary calculator if we write
#scale=2
#5/2
#2.50
#using this method we we calculat fractional value
x=10
y=3
frac=$(echo "scale=2;($x/$y)"|bc)
echo "Division of $x and $y is: $frac"
