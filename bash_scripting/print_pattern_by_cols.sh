#!/bin/bash

cols=6
for ((i=0; i<=cols; i+=2)); do
	for ((s=0; s<i; s++)); do
		if [ $s -eq 0 -a $i -eq $cols ]; then
			((s++))
		fi
		echo -n " "
	done

	for ((a=0; a<cols-i; a++)); do
		echo -n "* "
	done

	if [ $i -eq $cols ]; then
		echo -n "*"
	fi
	echo
done
