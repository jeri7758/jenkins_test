#!/bin/bash
#ifelse statement
echo "enter the number"
read x
if [ "$x" -gt "0" ] 
then
	echo "$x is a possitive number"
elif [ "$x" -lt "0" ]
then
	echo "$x is a negative number"
else
	echo "$x is zero"
fi
