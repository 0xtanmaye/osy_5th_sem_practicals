#!/bin/bash
# List readable, writeable, and executable files in the current working directory
echo "Readable, writeable, and executable files in the current directory ($(pwd)):"
for file in *; do
	if [ -r "$file" ] && [ -w "$file" ] && [ -x "$file" ] && [ -f "$file" ]; then
		echo "$file"
	fi
done
