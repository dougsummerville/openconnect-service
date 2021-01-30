DOMAIN=ssl.example.com
USER=myname
AUTHGROUP=USERS
URL=https://${DOMAIN}
DSIDFILE=/tmp/${DOMAIN}.DSID
PASSFILE=/etc/openconnect/${DOMAIN}.passwd
PIDFILE=/run/openconnect@${DOMAIN}.pid

