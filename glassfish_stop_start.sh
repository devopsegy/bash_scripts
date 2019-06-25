#!bin/bash
 
GLASSFISH_HOME=/home/glassfish/glassfish3
GLASSFISH_USER=glassfish
RETVAL=0
 
case "$1" in
start)
su - $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin start-domain domain1"
su - $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin start-local-instance instance1"
;;
stop)
su - $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin stop-local-instance instance1"
su - $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin stop-domain domain1"
;;
restart)
su - $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin restart-local-instance instance1"
su - $GLASSFISH_USER -c "$GLASSFISH_HOME/bin/asadmin restart-domain domain1"
;;
*)
echo $"Usage: $0 {start|stop|restart}"
RETVAL=1
esac
exit $RETVAL
