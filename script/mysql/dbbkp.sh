#!/bin/bash 

  

echo -e "Enter Database Name: \c" 

read -r DATABASENAME 

FILENAME="$(date +"$DATABASENAME%y%m%d%H%M"_db_bak.sql.gz)" 

DATABASEUSER="root" 

DBPASSWORD="sipl@123" 

mysqldump -u $DATABASEUSER -p$DBPASSWORD  $DATABASENAME  --routines | gzip -9 > /mnt/$FILENAME 

scp -r /mnt/$FILENAME root@10.10.5.8:/home/repli  
