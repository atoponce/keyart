#!/bin/bash

FILE="art.txt"
LEN="$(wc -l $FILE | awk '{print $1}')"
I=1

while [[ $I -le $LEN ]]; do
    LINE1=$(sed -n "$((I+00))p" $FILE)
    LINE2=$(sed -n "$((I+13))p" $FILE)
    LINE3=$(sed -n "$((I+26))p" $FILE)
    LINE4=$(sed -n "$((I+39))p" $FILE)
    LINE5=$(sed -n "$((I+52))p" $FILE)
    echo "${LINE1}${LINE2}${LINE3}${LINE4}${LINE5}"
    if [ $((I%13)) -eq 0 ]; then I=$((I+52)); fi
    I=$((I+1))
done
