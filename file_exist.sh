#!/bin/bash
echo "enter filename"
read x
[ -f "$x" ] && echo "file $x exists" || echo "$x: not found"
