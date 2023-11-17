#!/bin/bash
read -p "Enter the source filename: " sourcef
read -p "Enter the destination filename: " destinationf

if [ -f $sourcef ]
then
	cp -v $sourcef $destinationf
	echo "$sourcef copied as $destinationf successfully"
elif [ -d $sourcef ]
then
	cp -rv $sourcef $destinationf
	echo "$sourcef copied as $destinationf successfully"
elif ! [ -e $sourcef ]
then
	echo "$sourcef doesn't exist"
fi
