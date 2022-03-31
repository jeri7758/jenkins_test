#!/bin/bash
vers=$( cat /etc/issue 1>/dev/null 2>&1; echo $? )
echo $vers
