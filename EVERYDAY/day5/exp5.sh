#!/bin/bash



echo "First argument is $1"
echo "Second argument is $2"
echo "total arguments are $#"
echo " All arguments are $@"

if [ $# -ge 2 ];
then
	echo "number of arguments is greater than equal to 2"

fi

