# Write a script that a university has the following rules for a student to qualify for a degree with A as the main subject and B as the subsidiary subject:
# (a) He should get 55 percent or more in A and 45 percent or more in B.
# (b) If he gets less than 55 percent in A he should get 55 percent or more in B. However, he should get at least 45 percent in A.
# (c) If he gets less than 45 percent in B and 65 percent or more in A he is allowed to reappear in an examination in B to Qualify.
# (d) In all other cases he is declared to have failed.
# Write a program to receive marks in A and B and Output whether the student has passed, failed or is allowed to reappear in B.
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
