#!/bin/bash
read -p "Enter the source filename: " sourcef
if ! [ -e $sourcef ]; then
	echo "$sourcef doesn't exist!"
	exit 1
fi
read -p "Enter the destination filename: " destinationf

if [ -f $sourcef ]
then
	cp -v $sourcef $destinationf
	echo "$sourcef copied as $destinationf successfully"
elif [ -d $sourcef ]
then
	cp -rv $sourcef $destinationf
	echo "$sourcef copied as $destinationf successfully"
fi
