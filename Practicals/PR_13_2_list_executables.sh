#!/bin/bash
# List executables in the current working directory
echo "Executable files in the current working directory ($(pwd)):"
for file in *; do
	if [ -x "$file" ] && [ -f "$file" ]; then
		echo "$file"
	fi
done
