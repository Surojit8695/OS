arr=(10 20 30 40 50) 
echo "First element: ${arr[0]}"
echo "Second element: ${arr[1]}"
echo "Third element: ${arr[2]}"
echo "Fourth element: ${arr[3]}"
echo "Fifth element: ${arr[4]}"
echo "All elements: ${arr[@]}"




# Indexed array
arr2=(70 80 90 100)

# Declare an empty array and assign values later
arr2[0]=1
arr2[1]=2
echo "${arr2[0]}"
echo "${arr2[1]}"

# Using declare command
declare -a arr3
arr3=(5 15 25)


