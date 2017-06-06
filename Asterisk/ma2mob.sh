#!/bin/sh
#$1  email address
#$2  from-cid
#$3  to-cid
#$4  attachment

EMAIL=$1
FROMCID=$2
TOCID=$3
ATTACH=$4
LOGFILE="/var/log/asterisk/m2mob.log"
TDATE=$(date +"%d-%m-%y")
TTIME=$(date +"%T")

echo $TDATE $TTIME $1 $2 $3 >> $LOGFILE

#Check for address if not quit
if [ "$EMAIL" == "" ]; then
        exit 0
fi

SUBJECT="${TDATE} ${TTIME} from ${FROMCID} to ${TOCID}"
BODY="mail from asterisk $SUBJECT"

(uuencode $ATTACH $ATTACH; echo $BODY) | mailx -s "$SUBJECT" $EMAIL

exit 0
