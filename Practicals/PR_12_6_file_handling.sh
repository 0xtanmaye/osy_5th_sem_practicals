#!/bin/bash
# File handling program
read -p "Enter the file or directory path: " user_path
if [ -e "$user_path" ]; then
	if [ -f "$user_path" ]; then
		echo "'$user_path' is a file."

		echo "Choose an operation:"
		echo "1. Copy the file"
		echo "2. Remove the file"
		echo "3. Rename the file"
		echo "4. Exit"
		read -p "Enter your choice (1-4): " choice
		case $choice in
			1)
				read -p "Enter the destination path for copying: " destination_path
				cp -v "$user_path" "$destination_path"
				echo "File '$user_path' copied successfully to '$destination_path'."
				;;
			2)
				rm -v "$user_path"
				echo "File '$user_path' removed successfully."
				;;
			3)
				read -p "Enter the new name for the file: " new_name
				mv -v "$user_path" "$new_name"
				echo "File '$user_path' renamed successfully to '$new_name'."
				;;
			4)
				echo "Exiting the program."
				;;
			*)
				echo "Invalid choice. Exiting the program."
				;;
		esac
	else
		echo "'$user_path' is a directory."
	fi
else
	echo "File or directory at path '$user_path' not found."
fi
