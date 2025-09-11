hour=$(date +"%H")
#user=$USER
#or
user=$(whoami)

time=$(date +"%H:%M %p")
if [ $hour -lt 12 ]
then
	echo "Good morning $user Its $time"
else
	echo "Good night Its $time"
fi
