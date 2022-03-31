#!/bin/bash
echo "enter a number"
read x
[ "$x" -lt "0" ] && echo "It's negative" || echo "It's possitive"
[ "$x" -eq "0" ] && echo "It's zero" || echo "it's not zero"

