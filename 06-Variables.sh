#!/bin/bash

#  This script is for addition of 2 numbers

# we can use 2 methods here, but best practise is to use read method.

echo "Please enter the first number: "

read -s num1

num1=$1

echo "Please enter the second number: "

read -s num2

num2=$2

Sum=$(($num1+$num2))

echo "The total is: $Sum "


echo "Done, moving on to second method"

:'

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "The Sum of two numbers is : " $SUM

echo "Done".

'


