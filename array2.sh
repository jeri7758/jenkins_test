#!/bin/bash  
#Script to slice Array Element from index 1 to index 3  
  
#Declaring the Array  
example_array=( "Java" "Python" "HTML" "CSS" "JavaScript" )  
  
#Slicing the Array   
sliced_array=("${example_array[@]:0:4}")  
  
#Applying for loop to iterate over each element in Array  
for i in "${sliced_array[@]}"  
do  
	echo $i  
done  
