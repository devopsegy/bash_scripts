#!/bin/bash
if [ $(curl -LI https://google.com/ -o /dev/null -w '%{http_code}\n' -s) == "200" ] ; then
    echo "https://google.com/ is up"
else
    service supervisord restart
fi
