#!/bin/bash
read -p "Enter first number:" n1
read -p "Enter second number:" n2

echo "Addition = $(($n1 + $n2))"
echo "Subtraction = $(($n1 - $n2))"
echo "Multiplication = $(($n1 * $n2))"
echo "Division = $(($n1 / $n2))"
