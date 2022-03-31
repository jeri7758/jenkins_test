#!/bin/bash
. ./install_pkg_function.sh
a="0"
while [ "$a" = 0 ]
do
        chkcent=$( cat /etc/redhat-release 1>/dev/null 2>&1; echo $?)
        chkubun=$( cat /etc/issue | grep -i "ubuntu" 1>/dev/null 2>&1; echo $?)
        echo "*********"
        echo "Choose the package that you would like to install"
        echo "1. Apache"
        echo "2. SQL"
        echo "3. PHP"
        read opt
        case $opt in
                1 | Apache )
                        [ "$chkubun" -eq "0" ] && install_apac
                        [ "$chkcent" -eq "0" ] && install_apac_cent
                        ;;
                2 | SQL )
                        [ "$chkubun" -eq "0" ] && install_sql
                        [ "$chkcent" -eq "0" ] && install_sql_cent
                        ;;
                3 | PHP )
                        [ "$chkubun" -eq "0" ] && install_php
                        [ "$chkcent" -eq "0" ] && install_php_cent
                        ;;
                * )
                        echo "Enter a valid option again"
                        ;;
        esac
done
if [ "$a" = 10 ]
then
	b="0"
	while [ "$b" = 0 ]
		do
		echo "-------------------------------"
		echo "Would you like to proceed with the Wordpress installation??"
		echo "-------------------------------"
		echo "1. YES"
		echo "2. NO"
		echo "---------------------"
		read wpr
		case $wpr in
		1 | YES )
			wpr_installation
			;;
		2 | NO )
			echo "Thank you ...... Exiting"
			b=10
			;;
		* )
			echo "-------------"
			echo "Enter YES or NO"
			;;
		esac
	done
fi
