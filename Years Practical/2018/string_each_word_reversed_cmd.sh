#!/bin/bash

n=$#
for ((i=1; i<=n; i++))
do
   eval str=\$$i 
   str=$(echo "$str"|rev) 
    echo -n "$str "
    
done
echo ""

