#!/bin/bash
# Accept a filename and assign it all the permissions
read -p "Enter filename: " filename
if [ ! -e "$filename" ]; then
	echo "'$filename' does not exist."
	exit 1
fi
chmod -v u+rwx "$filename"
echo "User (Owner) Permissions for '$filename' have been set to read, write, and execute."
