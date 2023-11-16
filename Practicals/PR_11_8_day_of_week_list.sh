#!/bin/bash
# For loop using day of week list
days=("Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday" "Sunday")
for day in "${days[@]}"; do
	echo "$day"
done
