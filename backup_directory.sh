#!/bin/bash

DESTINATION="/Backup"

SOURCE="/var/www"

#Todays date in ISO-8601 format:
DAY0=`date -I`
 
#Previous backup date:
DAY1=`find $DESTINATION/* -type d -prune -not -wholename "*lost+found*" | tail -1`
  
#The target directory:
TRG="$DESTINATION/$DAY0"
 
#The link destination directory:
LNK="$DAY1"
 
#The rsync options:
OPT="-avh --delete --link-dest=$LNK"
 
#Execute the backup
rsync $OPT $SOURCE $TRG
