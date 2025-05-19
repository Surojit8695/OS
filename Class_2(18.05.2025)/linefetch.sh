
echo -n "Enter the lower bound:"
read l
echo -n "Enter the uppper bound:"
read u
k=`expr $u - $l + 1`
head -$u f1 | tail -$k
