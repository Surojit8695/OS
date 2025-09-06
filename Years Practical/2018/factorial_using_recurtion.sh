factorial() {
    local n=$1
    if [ "$n" -le 1 ]; then
        echo 1
    else
        local prev
        prev=$(factorial $((n - 1)))
        echo $((n * prev))
    fi
}

echo -n "Enter the number: "
read n
result=$(factorial $n)
echo "Factorial of $n is: $result"

