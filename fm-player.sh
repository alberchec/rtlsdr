#!/bin/bash

rtl_fm -l 0 -E deemp -g 30 -M fm -s 200k -f ${2:-104.3}M 2> /dev/null | \
ffmpeg -f s16le -ar 200k -ac 1 -i - -f mp3 pipe: -loglevel quiet | \
nc -lp $1
#ffplay -nodisp -loglevel quiet -
#play -t raw -r 200k -e s -b 16 -c 1 -V1 -
#ffplay -f s16le -ar 200k -ac 1 -nodisp -
