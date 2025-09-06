echo -n "Enter the month:"
read month

echo -n "Enter the year:"
read year
# month=$1
# year=$2
if [ $month -gt 12 ]
then
	echo "Month can't be greater than 12"
	exit 1
fi


cal  $month $year
