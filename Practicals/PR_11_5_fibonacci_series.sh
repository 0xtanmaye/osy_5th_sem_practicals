#!/bin/bash
# Display fibonacci series
read -p "Enter the number of terms: " nterms
term1=0;
term2=1;
next_term=$((term1+term2))
echo -n "Fibonacci series: $term1, $term2"
for ((i=3; i<=nterms; i++)); do
	echo -n ", $next_term"
	term1=$((term2))
	term2=$((next_term))
	next_term=$((term1+term2))
done
echo
