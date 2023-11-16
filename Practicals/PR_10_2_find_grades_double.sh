#!/bin/bash
# Find Grades (Double Decision)
read -p "Enter the percentage: " percentage

if [ $percentage -ge 40 ]; then
	echo "Pass"
else
	echo "Fail"
fi
