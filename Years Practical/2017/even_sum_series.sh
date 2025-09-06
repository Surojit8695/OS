echo "Enter the number of terms:"
read n
sum=0
sign=1
count=1
for ((i = 1; i <= n; i++))
do
    term=`expr $count \* $sign`
    sum=`expr $sum + $term`
    sign=`expr $sign \* -1`
    count=`expr $count + 2`
done

echo "Sum of the series is: $sum"

