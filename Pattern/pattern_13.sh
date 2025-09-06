echo -n "Enter the number of rows: "
read n

for ((i=1; i<=n; i++))
do
    for ((j=1; j<=n; j++))
    do
        if [[ $i -eq 1 || $i -eq $n ]]
        then
            echo -ne "*\t"
        elif [[ $j -eq 1 || $j -eq $n ]]
        then
            echo -ne "*\t"
        else
            echo -ne "\t"
        fi
    done
    echo ""
done

