#!/bin/bash
#ip test
. ./ip_funct.sh

OIFS=$IFS
IFS="."
echo "Enter IP address :: "
read -a ip_arr
ip_test
IFS=$OIFS
