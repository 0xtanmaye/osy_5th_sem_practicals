#!/bin/bash
# Greatest of three numbers

read -p "Enter first number: " n1
read -p "Enter second number: " n2
read -p "Enter third number: " n3

if [ $n1 -eq $n2 -a $n1 -eq $n3 ]; then
	echo "All three numbers are equal"
elif [ $n1 -gt $n2 -a $n1 -gt $n3 ]; then
	echo "$n1 is the greatest"
elif [ $n2 -gt $n3 -a $n2 -gt $n1 ]; then
	echo "$n2 is the greatest"
else
	echo "$n3 is the greatest"
fi
