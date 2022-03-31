#!/bin/bash
#recurse function
count=0
recurse() 
{
	(( count ++ ))
	if [ "$count" -lt "5" ]
	then
		echo $count
		recurse
	fi
}
recurse
