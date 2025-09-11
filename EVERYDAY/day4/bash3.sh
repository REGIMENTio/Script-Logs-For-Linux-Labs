#!/bin/bash
echo ENTER YOUR NUMBER 1
read num1
echo ENTER YOUR NUMBER 2
read num2

sum=$((num1+num2))
sub=$((num1-num2))
mul=$((num1*num2))
div=$((num1/num2))

echo "DIVISION="$div
echo "MULTIPLY="$mul
echo "SUMMATION="$sum
echo "SUBSTRACTION="$sub
