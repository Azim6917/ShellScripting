#!/bin/bash


<< Loops
Below is the table printing loop
Loops

read -p "Enter the number you wan table for: " number

for (( num=1 ; num<=10 ; num++ ))
do
	ans=$((number*num))
	echo "$number*$num=$ans"
done
