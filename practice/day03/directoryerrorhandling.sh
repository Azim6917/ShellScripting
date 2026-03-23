#!/bin/bash


<< Errorhandling

🎯 Task

Write a bash script that:

1️⃣ Takes a directory name as an argument
2️⃣ If no argument is given → show error
3️⃣ If directory already exists → show error
4️⃣ If directory does NOT exist:

Create the directory
Print: Directory created successfully

Errorhandling

if [ $# -eq 0 ]
then
	echo "Error: Directory name not entered."
	exit 1

fi

folder=$1

if [ ! -d "$folder" ]
then
	mkdir $folder
	echo "$folder has been created Successfully."
	exit 0
fi

echo "Error: $folder already exists."
exit 1
