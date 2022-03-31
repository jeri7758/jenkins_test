#!/bin/bash
#script for functions
hello() 
{
	echo "Welcome $1"
}
function hi 
{
	echo "Bye $1, $2"
}
echo "enter two names"
read x y
hello $x
hi $x $y
