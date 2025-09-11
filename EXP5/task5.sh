#!/bin/bash
echo "Enter a number"
read num
i=2
for ((num; num>i; i++))
do

if [ $((num % i)) -eq 0 ]; then

echo "NUM IS COMPOSITE"
break


elif [[ $((num % i)) -ne 0 && $i -eq $((num - 1)) ]]; then


echo "num is prime"
break

fi

done

if [ $num -eq 0 ] || [ $num -eq 1 ] || [ $num -eq 2 ] ; then
echo "NUM ISNT PRIME OR COMPOSITE"
fi

