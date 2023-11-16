#!/bin/bash
# Perform various mathematical operations
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
if ! [[ $num1 =~ ^[0-9]+$ && $num2 =~ ^[0-9]+$ ]]; then
	echo "Please enter valid number!"
	exit 1
fi
echo "Select a mathematical operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Exit"
read -p "Enter your choice (1-5): " choice
case $choice in
	1)
		result=$((num1 + num2))
		;;
	2)
		result=$((num1 - num2))
		;;
	3)
		result=$((num1 * num2))
		;;
	4)
		if [ $num2 -eq 0 ]; then
			echo "Error: Division by zero is not allowed."
			exit 1
		else
			result=$((num1 / num2))
		fi
		;;
	5)
		echo "Exiting the script."
		exit 0
		;;
	*)
		echo "Invalid choice. Please enter a number between 1 and 5."
		exit 1
		;;
esac
echo "Result: $result"
