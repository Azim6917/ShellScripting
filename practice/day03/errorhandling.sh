#!/bin/bash

<< comment
errorhandling() {

	if [ find $1 ];
	then
		echo "File name has not been entered"
		exit 1

		echo "File not found"
		exit 1
		fi}

		echo "File $1 has been found in you directory"
		exit 0


		errorhandling $1
comment
<< testing
 if [ find $1 ];
        then
                echo "File name has not been entered"
                exit 1

                echo "File not found"
                exit 1
            fi

                echo "File $1 has been found in you directory"
                exit 0
testing


error() {
	find $1
}

if ! error; then 
	echo "Directory or file not found "
	exit 1
else
	echo "file found"
	exit 0
fi

