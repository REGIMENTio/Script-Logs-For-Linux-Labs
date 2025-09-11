#!/bin/bash
echo "Enter a number: "
read num
flag=0

for ((i=2; i<=num/2; i++))
do
    if [ $((num % i)) -eq 0 ]
    then
        flag=1
        break
    fi
done

if [ $flag -eq 0 ]
then
    echo "$num is a prime number."
else
    echo "$num is not a prime number."
fi



























# #!/bin/bash
# echo "Enter a number"
# read num
# i=2
# for ((num; num>i; i++))
# do

# if [ $((num % i)) -eq 0 ]; then

# echo "NUM IS COMPOSITE"
# break


# elif [[ $((num % i)) -ne 0 && $i -eq $((num - 1)) ]]; then


# echo "num is prime"
# break

# fi

# done

# if [ $num -eq 0 ] || [ $num -eq 1 ] || [ $num -eq 2 ] ; then
# echo "NUM ISNT PRIME OR COMPOSITE"
# fi

