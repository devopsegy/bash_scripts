
#!/bin/bash

#Remote Server IP
target=0.0.0.0

#SSH Non-Stardard port number
port=2200

#Local backup location
local=/backup/cpbackup

#Remote backup location
remote=/remote/backup/

#rsync command with non-standard port
rsync -avz -e "ssh -p $port" $local $target:$remote

#To delete files older than 10 days
find $remote/* -mtime +10 -exec rm {} \;
