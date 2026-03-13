#!/bin/bash


#This is a practice set


<< Comment
This is a variable
Comment

Drive="local Drive"

echo "Below are the details of $Drive "

echo "------------------------------------------------------------------------------------"

echo "$(free -h)"

<< Comment 
Taking input from user
Comment

echo "                                                                         "
echo "----- Below is the practice of addition by taking input from user -----"

read -p "Enter the value = " value1

read -p "Enter another value you want to add = " value2

value3=$((value1+value2))

echo "your answer is $value3"



