#!/bin/bash

# Database credentials
user="db_db"
password="jsakjsasde3"
host="localhost"
db_name="db_db"

# Other options
backup_path="/backup/database/"
date=$(date +"%d-%b-%Y")

# Set default file permissions
umask 177

# Dump database into SQL file
mysqldump --user=$user --password=$password --host=$host $db_name > $backup_path/$db_name-$date.sql

# Delete files older than 30 days
find $backup_path/* -mtime +30 -exec rm {} \;
