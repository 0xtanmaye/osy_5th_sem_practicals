#!/bin/bash
# Perform addition of digits of a number
read -p "Enter a number: " num

if [[ $num =~ ^[0-9]+$ ]]; then
	temp=$num
	sum=0
	while ((temp != 0)); do
		rem=$((temp%10))
		sum=$((sum+rem))
		temp=$((temp/10))
	done
	echo "Sum of digits of $num is $sum"
else
	echo "Please enter a valid number!"
fi
