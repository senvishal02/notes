#!/bin/bash
FILENAME="$(date +"bally%Y%m%d%H%M"_db_bak.sql.gz)"
DATABASENAME="bally"
DATABASEUSER="root"
DBPASSWORD="sipl@123"
mysqldump -u $DATABASEUSER -p$DBPASSWORD -B $DATABASENAME --single-transaction --routines | gzip -9 > /home/backup/bally/$FILENAME
