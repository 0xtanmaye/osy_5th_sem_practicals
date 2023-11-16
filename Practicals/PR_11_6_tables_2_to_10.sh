#!/bin/bash
# Display tables of 2 to 10 numbers (Like 2 * 1 = 2) 
for num in {2..10}; do
	echo "Table of $num"
	# OR 
	# for ((i=1; i<=10; i++)); do
	for i in {1..10}; do
		echo "$num * $i = $((num*i))"
	done
	echo
done
