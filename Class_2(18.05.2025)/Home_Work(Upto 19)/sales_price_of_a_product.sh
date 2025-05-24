# Write a  script that finds the sales price of a product.
# Price Tag	Discount
# 5000-9999	5%
# 10000-19999	10%
# 20000-39999	15%
# 40000-49999	20%
# 50000 above	25%
echo "Enter the Price:"
read p

if [ $p -ge 5000 ] && [ $p -le 9999 ]; then
    discount=$(echo "scale=2; ($p * 5) / 100" | bc)
elif [ $p -ge 10000 ] && [ $p -le 19999 ]; then
    discount=$(echo "scale=2; ($p * 10) / 100" | bc)
elif [ $p -ge 20000 ] && [ $p -le 39999 ]; then
    discount=$(echo "scale=2; ($p * 15) / 100" | bc)
elif [ $p -ge 40000 ] && [ $p -le 49999 ]; then
    discount=$(echo "scale=2; ($p * 20) / 100" | bc)
elif [ $p -ge 50000 ]; then
    discount=$(echo "scale=2; ($p * 25) / 100" | bc)
else
    discount=0
fi

final=$(echo "scale=2; $p - $discount" | bc)
echo "Final price after discount is: $final"
