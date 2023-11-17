#!/bin/bash
# Display list of all files in your home directory
echo "List of files in your home directory ($(echo ~)):"
for entry in ~/*; do
	if [ -f "$entry" ]; then
		echo "$entry"
	fi
done
