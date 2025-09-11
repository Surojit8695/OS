echo ""
date #It will show the current date and time including 
echo ""

#Custom format example
date +"%d-%m-%Y" # only date
date +"%d/%m/%y" # only date
echo ""

date +"%H:%M:%S" # only time
date +"%I:%M:%S %p" # only time
echo ""

date +"Today is: %A %d %b %y" # full format
echo ""

# Yestarday,Tomorrow,and future /past dates
echo -n "Yesterday:"
date  -d "yesterday"+ #It will show the previous day
echo -n "Next day:"
date -d "tomorrow" # It will show the next date
date -d "+7 days" # it will add +7 with the current date 
date -d "-30 days" # It will subtract 30 with the cureent date
date -d "next friday" # it will show the date of next friday

