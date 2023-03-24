#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Usage: $0 Nr - Title"
  exit 1
fi
TITLE=$@
echo "Using title: $TITLE"
cp -r "000 - Template" "$TITLE"
mv "$TITLE/Thumbnail/thumbnail.kra" "$TITLE/Thumbnail/$TITLE Thumbnail.kra"
rm "$TITLE/Thumbnail/thumbnail.psd"
rm "$TITLE/Thumbnail/thumbnail.xcf"



