#!/bin/bash
#
# The archive script moves the last recording to archive
cd /d/OBS/
if [ `ls -1 | grep ^20 | wc -l` -gt 0 ]; then
  LASTID=`ls 20* | sort | tail -n 1 | sed 's/\(20..-..-.._..-..-..\).*$/\1/'`
  echo "Going to archive $LASTID"
  mv $LASTID* Archive
else
  echo "Nothing to archive"
fi
sleep 30
