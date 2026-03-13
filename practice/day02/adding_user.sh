#!/bin/bash


#echo "__________________________________________________________________________"
echo
echo "--------------------------Add User----------------------------------------"
echo
#echo "--------------------------------------------------------------------------"

read -p "Enter the name of user youu want to add: " username

sudo useradd -m $username 

sudo passwd $username

echo "user $username has been created you can check it in etc/passwd."
