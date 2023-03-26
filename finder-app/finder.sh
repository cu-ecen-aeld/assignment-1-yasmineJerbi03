#!/bin/sh


if [ $# != 2 ]
then
	echo "Parameters are not specified"
	exit 1
fi




if [ ! -d $1 ]
then
	echo "File Not found"
	exit 1
fi


X=`ls -l $1 | grep ^- | wc -l`
Y=`grep -r $2 $1 | wc -l `
echo "The number of files are $X and the number of matching lines are $Y"
