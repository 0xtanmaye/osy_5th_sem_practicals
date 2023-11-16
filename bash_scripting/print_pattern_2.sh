#!/bin/bash

for ((i=1; i<=7; i+=2))
do
	for ((s=1; s<=(i-1)/2; s++))
	do
		echo -n "  "
	done
	
	for ((j=1; j<=8-i; j++))
	do
		echo -n "* "
	done

	echo
done
