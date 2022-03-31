#!/bin/bash
#function to use return variable
op()
{
	(( m = $1*100 ))
	a="$?"
	[ "$a" -eq "0" ] && echo "product is $m" && return 25
	echo "$m is not a number"
	return 50
}

op 50
echo "return code $?"

op jareer
echo "return code $?"
