#!/bin/bash
# Display list of all directories in your home directory
echo "List of directories in your home directory ($(echo ~)):"
for entry in ~/*; do
	if [ -d "$entry" ]; then
		echo "$entry"
	fi
done
