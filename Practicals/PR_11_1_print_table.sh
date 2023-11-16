#!/bin/bash
# Print table of given number using for loop
read -p "Enter a number to print table of: " num
echo "Table of $num"
# OR 
# for ((i=1; i<=10; i++)); do
for i in {1..10}; do
	echo "$num * $i = $(( num*i ))"
done
