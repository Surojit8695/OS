#!/bin/bash
filename=myfile.txt
count=1
while read line
do
    echo "Line $count: $line"
    
	    set $line
	    len=$#
	    for((i=1;i<=len;i++))
	    do
	    	eval echo ".      word $i :\${$i}"
	    done
	       
    count=$((count+1))
done < $filename
