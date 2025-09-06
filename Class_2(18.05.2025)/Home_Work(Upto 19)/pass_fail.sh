echo -n "Enter the mark of subject A:"
read a
echo -n "Enter the mark of subject B:"
read b
if [ $a -ge 55 -a $b -ge 45 ]
	then
	echo "Pass.."
elif [ $a -lt 55 -a $b -ge 55 ]
	then
	echo "Pass.."
elif [ $a -ge 65 -a $b -lt 45 ]
	then
	echo "Reappear in examination B to qualify"
else
	echo "Fail.."
fi

