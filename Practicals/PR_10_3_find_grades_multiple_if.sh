#!/bin/bash
# Find Grades (Multiple if statements)
read -p "Enter the percentage: " percentage

if [ $percentage -ge 90 ]; then
	echo "Grade A"
elif [ $percentage -ge 70 ]; then
	echo "Grade B"
elif [ $percentage -ge 50 ]; then
	echo "Grade C"
elif [ $percentage -ge 40 ]; then
	echo "Grade D"
else
	echo "Fail"
fi
