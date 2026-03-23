#!/bin/bash

<< user 

Write a bash script that:

1️⃣ Takes a directory name as an ainput from user
2️⃣ If no ainput is given → show error
3️⃣ If  directory already exists → show error
4️⃣ If directory does NOT exist:

Create the directory
Print: Directory created successfully

user

read -p "Enter the name of directory: " Dir

if [ ! -d $Dir ]
then
	mkdir $Dir
	echo "$Dir has been successfully created."
	exit 1
fi

echo "Error: $Dir already exists."
