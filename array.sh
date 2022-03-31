#!/bin/bash
#arrays
A=(jeri jazlan jaza)
declare -A B=([name]="Jeri JS" [place]="kasaragod")
echo "${A[0]}"
echo "${B[name]}"

echo "${A[@]}"
echo "${!B[@]}"
echo "${#B[@]}"

for i in ${B[@]}
do
	echo $i
done

for i in ${!B[@]}
do
	echo "the value of index $i :: ${B[$i]}"
done

len=${#A[@]}
for (( i=0; i<${len}; i++ ))
do
	echo "index $i = ${A[$i]}"
done

A[3]="One more person"
echo "${A[@]}"

echo "${A[3]}"
B[age]="23"
echo "${B[@]}"

unset A[3]
unset B[age]
echo "${A[@]}"
echo "${B[@]}"

echo "${A[@]}"

s=("${A[@]:1:3}")
echo "${s[@]}"
echo "${!s[@]}"
