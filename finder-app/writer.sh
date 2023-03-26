#!/bin/sh


if [ $# != 2 ]
then
	echo "Parameters are not specified"
	exit 1
fi


mkdir -p "$(dirname "$1")"

echo $2 > $1


if [ $? -ne 0 ]; then
    # If an error occurs, print an error message and exit with value 1
    echo "Error: Could not create file $1"
    exit 1
fi



