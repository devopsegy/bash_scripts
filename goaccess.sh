#!/bin/bash

/usr/bin/ps aux | grep goaccess | awk '{print $2}' | head -n 1 | xargs kill -9

/usr/bin/rm -rf /home/userhome/public_html/report.html

sleep 10

/usr/bin/goaccess /var/log/nginx/access.log --log-format=COMBINED -o /home/userhome/public_html/report.html --real-time-html & disown 
