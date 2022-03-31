#!/bin/bash
#check multiple condition
echo "enter xy ?"
read x y
[[ $x -lt 10 || $y -gt 2 ]] && echo true || echo false

