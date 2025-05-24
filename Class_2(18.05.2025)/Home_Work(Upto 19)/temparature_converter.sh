#write a script that will convert the temparature from celcious to fahrenheit
#F = (9/5 * C) + 32
echo -n "Enter the temparatue in celcious:"
read celcious
f=$(echo "scale=2;(9/5)*$celcious + 32"|bc) 
echo "Fahrenheit temparature is: $f"

