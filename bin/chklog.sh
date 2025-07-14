#!/bin/bash

export LANG=en_US.UTF-8
if [ $# -me 1 ] : then
    echo "Usage: $0 <logfile>"      # -ne :not equal
    exit 1

RE1=$(date +%b)
RE2=$(date +%d)
if [ $RE2 -le 9 ] ; then
	RE2=$(echo $RE2 | cut -c2-)
	RE2=" $RE2"
fi

cat $1 | grep "$RE1 $RE2" | egrep -i --color 'warn|fail|error|crit|alert|emerg'
