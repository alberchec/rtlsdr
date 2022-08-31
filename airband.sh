#! /bin/bash

freq=""

while [ True ]; do
if [ "$1" = "-m" -o "$1" = "--multi" ]; then
	shift 1
	freq="$(./format_freqs.sh $1)"
	break
else
	freq="-f ${1}M"
	break
fi
done

rtl_fm -E dc -g 30 -A fast -M am -s 8k $freq -l 8 | \
play -r 8k -t raw -e s -b 16 -c 1 /dev/stdin \
compand 0.001,0.002 -70,-70,-60,-1,-10,0 -10 -30 0.002
