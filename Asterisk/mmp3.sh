#!/bin/sh
#$1  email address
#$2  tstart
#$3  from-cid
#$4  to-cid

EMAIL=$1
TSTART=$2
FROMCID=$3
TOCID=$4
LOGFILE="/var/log/asterisk/mmp3.log"
TDATE=$(date +"%d-%m-%y")
TTIME=$(date +"%T")
SOUND="/var/spool/asterisk/monitor/"${TOCID}

echo -e "\n$TDATE $TSTART $TTIME $EMAIL $FROMCID $TOCID $SOUND" >> $LOGFILE

# compute duration in seconds

IFS=: read ts_hour ts_min ts_sec <<< "$TSTART"
IFS=: read tt_hour tt_min tt_sec <<< "$TTIME"
ts_sec=$((10#$ts_hour*3600 + 10#$ts_min*60 + 10#$ts_sec))
tt_sec=$((10#$tt_hour*3600 + 10#$tt_min*60 + 10#$tt_sec))

echo -e "DURATION is $tt_sec minus $ts_sec = $((tt_sec - ts_sec)) seconds" >> $LOGFILE

#Check for address if not quit
if [ "$EMAIL" == "" ]; then
        exit 0
fi

sox $SOUND".gsm" -sS $SOUND".wav" #2>> $LOGFILE
#echo >> $LOGFILE
lame $SOUND".wav" $SOUND".mp3" #2>> $LOGFILE

SUBJECT="${TDATE} ${TSTART} tot ${TTIME} ($((tt_sec - ts_sec)) sec) van ${FROMCID} naar ${TOCID}"
BODY="NOREPLY mail from asterisk $SUBJECT"

echo -e "body=$BODY\nsubject=$SUBJECT\nsound=$SOUND\nmail-address=$EMAIL" >> $LOGFILE

#echo $BODY | mutt -s $SUBJECT -a $SOUND".mp3" -b $EMAIL
#mutt -s $SUBJECT -a $SOUND".mp3" -b $EMAIL < $BODY
echo $BODY | EMAIL="noreply@ycbv.nl" mutt -a $SOUND".mp3" -s "$SUBJECT" -b $EMAIL

exit 0
