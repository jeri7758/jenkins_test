#!/bin/bash
x="/etc/passwd"
y="/etc/shadow"
#start users parsing
echo "Parsing users list::::"
echo "Below are the users:::"
echo "----------------------"
cat $x | awk -F : '{print $1}' | tee users.txt
echo "----------------------"
echo "list also stored in users.txt file"
#end users parsing
