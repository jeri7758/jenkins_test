#!/bin/bash
read -a a
for i in ${!a[@]}
do
	echo "${a[$i]}"
done
