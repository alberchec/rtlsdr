#!/bin/bash

rtl_fm -g 30 -E deemp -M fm -s 200k -f ${1:-104.3}M | \
ffplay -f s16le -ar 200k -ac 1 -
