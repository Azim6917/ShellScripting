#!/bin/bash


<< Conditions
Conditional Statements
Conditions

num=$1

if [[ $num -gt 0 ]];
then
	echo "Number is positive"
elif [[ $num -lt 0 ]];
then
	echo "Number is Negative"
else
	echo "Number is 0"
fi
