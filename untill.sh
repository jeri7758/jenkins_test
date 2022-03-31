#!/bin/bash
#untill script
echo "enter a number:: "
read x
until [ $x -lt 0 ]
do
	echo $x
	(( x-- ))
done
