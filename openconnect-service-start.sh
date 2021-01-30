CMD=/usr/bin/openconnect
CONFIG=/etc/openconnect
if [ $# -ne 1 ]; then
    echo "Config file not specified"
    exit 1
fi
source $CONFIG/$1
if [ ! -f "$DSIDFILE" ]; then
	echo $DSIDFILE does not exist
	exit 1
fi
export DSID=$(cat $DSIDFILE)
${CMD} -b --pid-file=${PIDFILE} --authgroup=${AUTHGROUP} --user=${USER} -p $(/usr/bin/cat ${PASSFILE}) --juniper -C DSID=$(/usr/bin/cat ${DSIDFILE}) ${URL}
