echo -n "Enter the file name that you want to convert:: "
read sourse

echo -n "enter the file name where you want to store::"
read destination

tr 'a-z' 'A-Z' <"$sourse"> "$destination"
cp $destination $sourse
cat $sourse