#!/bin/bash
# Find Grades (Single Decision)
read -p "Enter the percentage: " percentage

if [ $percentage -ge 90 ] && [ $percentage -le 100 ]; then
	echo "Grade A"
fi
if [ $percentage -ge 70 ] && [ $percentage -lt 90 ]; then
	echo "Grade B"
fi
if [ $percentage -ge 50 ] && [ $percentage -lt 70 ]; then
	echo "Grade C"
fi
if [ $percentage -ge 40 ] && [ $percentage -lt 50 ]; then
	echo "Grade D"
fi
if [ $percentage -lt 40 ]; then
	echo "FAIL"
fi
