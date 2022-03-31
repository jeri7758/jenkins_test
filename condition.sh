#!/bin/bash
#experimenting with conditions
echo "who is this?"
read x
[ "$x" = "jareer" ] && echo "`date` jareer logged in" || echo "`date` Beware it's not jareer"
echo "gender?"
read y
[ "$y" != "male" ] && echo "it's not a male" || echo "it's male"
