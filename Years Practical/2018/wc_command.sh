printf "----MENU----\n"
echo "1.-C(Character count)"
echo "2.-L(Line count)"
echo "3.-W(Word count)"
echo -n "Enter your choise:"
read choise
if [ "$choise" -ge 1 -a "$choise" -le 4 ]
then
	w=0
	l=0
	c=0
	while read line
	do
		l=$((l+1))
		set $line
		x=$#
		w=$(($w + $x))
		ch=${#line}
		c=$(($c+$ch))
	done < $1
	# $1 is the file name
fi
case $choise in
1)	echo "Total character is: $c"
	
	 ;;
2) 
	
	echo "line count $l"
	;;
3) 
	echo "word count is: $w"
	;;
*) 
	echo "Invalid input"
	;;
esac
