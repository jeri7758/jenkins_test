#!/bin/bash
a=(jareer amal jinson)
declare -A b=([name]=jareer [place]=kasaragod)
echo ${a[@]}
echo ${a[@]}
echo ${!b[@]}
echo ${#b[@]}
