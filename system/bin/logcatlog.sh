umask 022

LOGDIR=/data/local/log

LOGFILE=$LOGDIR"/logcatlog"
echo "------enter logcat offlinelog------"
/system/bin/logcat -r8096 -n 64 -v threadtime -f $LOGFILE
