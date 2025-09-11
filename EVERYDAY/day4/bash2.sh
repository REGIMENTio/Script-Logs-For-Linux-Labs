#!/bin/bash
echo "Hey this is the script name"$0
echo "This is your input"$1
echo "THis is your input"$2
#write a bash script that shows addition substraction multiplication and division of 2 numbers; first by taking inout from user during execution ;argument
# from user passed as argument at the time of executing script


sum=$(($1+$2))
substraction=$(($1-$2))
multiply=$(($1*$2))
divide=$(($1/$2))

echo "SUM="$sum
echo "SUBSTRACTION="$substraction
echo "Multiply ="$multiply
echo "divide ="$divide
