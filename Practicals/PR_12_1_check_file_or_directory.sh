#!/bin/bash
# Check if input is a file and directory and display a message
read -p "Enter name: " input_name
# OR
# input_name=$1
if [ -f $input_name ]; then
	echo "$input_name is a file"
elif [ -d $input_name ]; then
	echo "$input_name is a directory"
else
	echo "$input_name does not exist"
fi
