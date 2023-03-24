#! /bin/bash
#
# The keep script finds the last video folder,
# and moves the content there.
VIDEODIR="/e/VideoProjects/Tools On Tech/Videos"


cd /d/OBS/
if [ `ls -1 | grep ^20 | wc -l` -gt 0 ]; then
  LASTID=`ls 20* | sort | tail -n 1 | sed 's/\(20..-..-.._..-..-..\).*$/\1/'`
  LASTVID=`ls "$VIDEODIR" | grep "^[0-9][0-9][0-9]" | sort -n | tail -n 1`
  echo "Going to keep $LASTID and move it to $VIDEODIR/$LASTVID/A-Roll"
  if [ -d "$VIDEODIR/$LASTVID/A-Roll" ]; then
    mv $LASTID* "$VIDEODIR/$LASTVID/A-Roll"
  else
    echo "Something wrong with target video directory, can't find A-roll dir"
  fi
else
  echo "Nothing to keep"
fi
sleep 30
