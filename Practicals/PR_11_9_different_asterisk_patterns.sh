#!/bin/bash
# Print different asterisk (*) patterns
max_lines=4
echo "Pattern 1 (Right-angled Triangle):"
for ((i = 1; i <= max_lines; i++)); do
	for ((j = 1; j <= i; j++)); do
		echo -n "* "
	done
	echo
done

echo -e "\nPattern 2 (Inverted Right-angled Triangle):"
for ((i = max_lines; i >= 1; i--)); do
	for ((j = 1; j <= i; j++)); do
		echo -n "* "
	done
	echo
done

echo -e "\nPattern 3 (Pyramid):"
for ((i = 1; i <= max_lines; i++)); do
	for ((j = 1; j <= max_lines - i; j++)); do
		echo -n "  "
	done
	for ((k = 1; k <= 2 * i - 1; k++)); do
		echo -n "* "
	done
	echo
done
