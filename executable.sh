#!/bin/bash
echo "enter the filename"
read x
[ -x "$x" ] && echo "$x is executable" || echo "$x is not executable giving permissions" && chmod +x $x
