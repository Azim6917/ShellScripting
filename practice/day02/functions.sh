#!/bin/bash


<< Functions
The script should take a number from user.

1. Create a function that checks if the number is even or odd.

2. The function should print:

   Even number if the number is even

   Odd number if the number is odd

Call the function from the script.
Functions

findout() {

	read -p "Enter the number: " numb
	if ((numb %2==0)) 
        then
                echo "Number is Even"
        else
                echo "Number is odd"
	fi	

}

findout 
