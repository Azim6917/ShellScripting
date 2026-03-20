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

<< tmp
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
tmp

#!/bin/bash

# Check if argument is provided
if [ $# -eq 0 ]
then
  echo "Error: Please provide a filename"
  exit 1
fi

file=$1

# Check if file exists
if [ ! -f "$file" ]
then
  echo "Error: File does not exist"
  exit 1
fi

# If file exists
echo "File found"

# Count number of lines
lines=$(wc -l < "$file")

echo "Total lines: $lines"

exit 0
