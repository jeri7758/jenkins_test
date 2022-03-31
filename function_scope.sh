#!/bin/bash
v1="A"
v2="B"
scope()
{
	local v2="D"
	v1="C"
	echo "During function- Value of V1 = $v1; Value of V2 = $v2"
}
echo "Initial - Value of V1 = $v1; Value of V2 = $v2"
scope 
echo "Final - Value of V1 = $v1; Value of V2 = $v2"
