#!/bin/sh
DIR=`date +%F-%H%M`
DEST=/backup/db-backup/$DIR
mkdir $DEST
mongodump -h localhost  --authenticationDatabase admin --username admin --password 000000  -o $DEST
