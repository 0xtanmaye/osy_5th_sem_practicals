#!/bin/bash
# Newer than /etc/passwd?

x=$1
if [ "$x" -nt "/etc/passwd" ]; then
	echo "X is a file newer than /etc/passwd"
fi # change 'if' to 'fi'
