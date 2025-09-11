db="database.txt"
if [ -f "$db" ]
then
	echo "Product Id | Product Name | Price | Quantity" > "$db"
fi 
while true
do
echo -e "\n----MENU----"
echo "1.Input data"
echo "2.Display data"
echo "3.Exit"
echo -n "Enter your choice:"
read choice
case $choice in
1)
	read -p "Enter the Product Id:" id
	read -p "Enter the Product Name:" name
	read -p "Enter the Product Price:" price
	read -p "Enter the Product Quantity:" qty
	echo "$id | $name | $price | $qty" >> "$db"
	;;
2)
	echo -e "\n---- Product Database ----"
	cat "$db"
	;;
3)
	echo "Exiting.."
	exit 0
	;;
*) 
	echo "Invalid choise"
	;;
esac
done
