#!/bin/bash
read -p "Enter name: " input_name

if [ -r $input_name ]
then
	echo "$input_name has read permission"
fi
if [ -w $input_name ]
then
	echo "$input_name has write permission"
fi
if [ -x $input_name ]
then
	echo "$input_name has execute permission"
fi
