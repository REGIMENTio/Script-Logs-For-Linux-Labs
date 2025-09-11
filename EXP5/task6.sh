#!/bin/bash
echo "Enter a number: "
read num
sum=0

while [ $num -gt 0 ]
do
    digit=$((num % 10))
    sum=$((sum + digit))
    num=$((num / 10))
done

echo "Sum of digits: $sum"





#!/bin/bash

# echo "Enter number: "
# read num 
# sum=0

# for (( i=0 ; i<=num; i++ ))
# do 
# sum=$((sum+i))
# done

# echo "SUM OF THE NUMBER TILL $num = $sum"

