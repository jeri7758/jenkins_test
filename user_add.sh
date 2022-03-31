#!/bin/bash
#bash script to create 10 different users
for i in `cat user1.txt`
do
		sudo useradd $i
done
