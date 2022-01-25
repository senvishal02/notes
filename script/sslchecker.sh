#!/bin/bash
#Purpose: check ssl certificate expirations days
#Version: 4.2.46(2)-release
#Created Date: Fri Oct  9 12:20:08 IST 2020
#Modified Date:
#Author: Vishal Sen
# ./sslchecker  <URL>
# START #

data=`echo | openssl s_client -servername $1 -connect $1:443 2>/dev/null | openssl x509 -noout -enddate | sed -e 's#notAfter=##'`

ssldate=`date -d "${data}" '+%s'`
nowdate=`date '+%s'`
diff="$((${ssldate}-${nowdate}))"

echo $((${diff}/86400))
