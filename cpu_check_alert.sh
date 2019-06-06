#!/bin/sh
#Eng Mohammed Ali
llimit=10
alert=m.ali.othman@gmail.com
host=`hostname -f`
load1=`cat /proc/loadavg |awk {'print $1'}|cut -d "." -f1` # The load average now


if test "$load1" -ge $llimit

then

echo "The CPU Utilization has reached To $load1% on $host"  | mail -s "$host : High Load Average Alert" $alert
echo "$date : The Load Average has reached $ and $load1 on $host" >> /var/log/loadavg.log

else


echo "ok" 1>&2


fi

