#!/bin/bash
#case
echo "Enter your favourite language"
echo "1: English"
echo "2: Malayalam"
echo "3: Hindi"
read x
case $x in
	1)
		echo "it's english"
		;;
	2)
		echo "it's malayalam"
		;;
	3) 
		echo "it's hindi"
		;;
	*)
		echo "select any of the 3"
		;;
esac
