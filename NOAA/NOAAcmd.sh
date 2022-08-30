#!/bin/bash

rtl_fm -l 0 -M fm -f $1M -s 50k -g 30  $2 &> $3
