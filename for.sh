#!/bin/bash
#for loop simple
echo "simple for loop"
for i in 1 2 3 4 5 6 7 
do
	echo "i is now $i"
done
#for loop for commands
echo ""
echo "testing commands in loop"
for i in $( ls / ) 
do
	echo "i is $i"
done
