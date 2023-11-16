#!/bin/bash
# Nested if example 
read -p "Enter percentage of Student: " percentage
read -p "Enter attendance percentage of Student: " attendance

if [ $percentage -ge 40 ]; then
	echo "Percentage is sufficient."

	if [ $attendance -ge 75 ]; then
		echo "Attendance is sufficient."
		echo "Congratulations! You have passed."
	else
		echo "Attendance is insufficient. You have failed."
	fi

else
	echo "Percentage is insufficient. You have failed."
fi
