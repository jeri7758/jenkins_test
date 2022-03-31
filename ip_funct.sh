#function for ip test
ip_test()
{
if [[ "${ip_arr[*]}" =~ [0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3} ]]
then
	 if (( "${ip_arr[0]}" >= "1" && "${ip_arr[0]}" < "255" && "${ip_arr[1]}" <= "255" && "${ip_arr[2]}" <= "255" && "${ip_arr[3]}" <= "255"))
	then
		if (( "${ip_arr[0]}" >= "1" && "${ip_arr[0]}" <= "126" ))
		then
			if (( "${ip_arr[0]}" == "10" ))
			then
				echo "It's a private IP address"
			else
				echo "It's a CLASS A IP ADDRESS"
			fi
		elif (( "${ip_arr[0]}" >= "128" && "${ip_arr[0]}" <= "191" ))
		then
			if (( "${ip_arr[0]}" == "172" && "${ip_arr[1]}" <= "31" && "${ip_arr[1]}" >= "16" ))
			then
				echo "It's a private IP address"
			else
				echo "It's a CLASS B IP ADDRESS"
			fi
		elif (( "${ip_arr[0]}" >= "192" && "${ip_arr[0]}" <= "223" ))
		then
                       if (( "${ip_arr[0]}" == "192" && "${ip_arr[1]}" == "168" ))
                       then
	               		echo "It's a private IP address"
		       else
				echo "It's a CLASS C IP ADDRESS"
		       fi		      
		else
		       echo "It's an experimental or reserved IP address"	
		fi
	else
		echo "It's not an IP address"
	fi
else
	echo "It's not an IP address"
fi
}

	
