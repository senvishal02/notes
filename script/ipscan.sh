#!/bin/bash 
#Purpose: AND Operator Example 
#Version: 4.2.46(2)-release 
#Created Date: Thu Oct  8 14:25:28 IST 2020 
#Modified Date: 
#Author: Vishal Sen 
# START # 

# range for ip address
for ping in {40..50} 
do  
status=`ping -w 3 192.168.2.$ping` 
    if [[ $? -ne 0 ]]; then 
        echo "192.168.2.$ping is offline" 
    else 
        echo "192.168.2.$ping is online" 
    fi; 
done 
