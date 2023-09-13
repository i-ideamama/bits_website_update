#!/bin/bash

URL="https://bitsadmission.com/"


while true; do
	curl -s $URL > ~/Desktop/bits_new.html 
	x=$(diff -q ~/Desktop/bits_old.html ~/Desktop/bits_new.html)
	if [[ "$x" != "" ]]; then
        	echo "website updated"
		mpv --quiet ~/Music/Music/carbon.mp3
	elif [[ "$x" = "" ]]; then
		echo "no change :("
	fi
	sleep 1800
done

