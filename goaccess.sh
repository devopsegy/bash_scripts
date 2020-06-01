!#/bin/bash
sudo goaccess /var/log/apache2/access.log --log-format=COMBINED -a -o /var/www/html/report.html
