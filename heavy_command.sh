#!/bin/bash
n=0
for var in "$@"; do
    n=$((++n)) 
    if [ $(($n % 2)) -eq 0 ]; then
        echo "$n: $var"
    else
        echo "$n: $var" 1>&2
    fi
    sleep 0.5
done
