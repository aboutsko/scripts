#!/bin/bash

SOURCE=$1
DESTINATION=$2

if [ $# -ne 2 ]
then
	echo 'Usage: ./convert_to_320k_mp3.sh $source $dest'
	exit 1
fi

for f in $SOURCE/*.mp3 ; do ffmpeg -n -i "$f" -acodec libmp3lame -ab 320k "$DESTINATION/$f"; done
