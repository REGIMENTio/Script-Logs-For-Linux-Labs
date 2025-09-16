#!/bin/bash



for ((i=1; i<10000; i++)) 
do 
temp=$i
n=${#i}  
sum=0

while [ $i -le 10000]
do
    digit=$((i % 10))
    sum=$((sum + digit**n))
    i=$((i / 10))

if [ $sum -eq $num ]
then
echo "$num is an Armstrong number."

fi

done

done 
