echo -n "Enter the input base:"
read input
echo -n "Enter the output base:"
read output
echo -n "Enter the value:"
read val
result=$(echo "obase=$output;ibase=$input;$val"|bc)
echo "The result is: $result"
