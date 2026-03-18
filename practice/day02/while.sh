#!/bin/bash

<< while_loop
checking password using while loop
while_loop

password="linux1234"

read -p "Enter password: " pass

while [[ $pass != $password ]]
do
	echo "Incorrect password"
	read -p "Please try again: " pass
done

echo "your password is correct"

