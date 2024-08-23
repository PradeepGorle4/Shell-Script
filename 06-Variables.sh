#!/bin/bash

#  This script is for addition of 2 numbers

# we can use 2 methods here, but best practise is to use read method.

echo "Please enter the first number: "

read -s num1

echo "Please enter the second number: "

read -s num2

sum=$(($num1+$num2))

echo "The total of $num1 and $num2 is: $sum "


echo "Done, moving on to second method"

:'

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "The Sum of two numbers is : " $SUM

echo "Done."

'


