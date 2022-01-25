#!/bin/bash  
#Purpose: send email alert if the server goes down.  
#Version: 4.2.46(2)-release  
#Created Date: Fri Dec  11 16:20:08 IST 2020  
#Modified Date:  
#Author: Vishal Sen  
# START #  
#HOSTLIST='192.168.1.193 192.168.1.194 192.168.1.243 192.168.1.244 192.168.1.179 192.168.1.250 192.168.1.242 192.168.1.245 192.168.1.240 192.168.1.241' 

BAD_HOSTLIST= 

for HOST in $HOSTLIST ; do 

        echo $HOST 

        ping -c 3 -w 5 $HOST || BAD_HOSTLIST="$BAD_HOSTLIST $HOST" 

        echo ======================= 

done 

if [ -n "$BAD_HOSTLIST" ] ; then 

        echo ___________________________________________ 

        echo The following hosts failed the ping test:- 

        echo $BAD_HOSTLIST | xargs -n 1 

        echo $BAD_HOSTLIST | xargs -n 1| mailx -s 'ALERT..!!! SERVER DOWN' vishal@google.com, ravendrarana@google.com  

fi 
