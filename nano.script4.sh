#!/bin/bash

LOGFILE=$1                         
KEYWORD=${2:-"error"}              

COUNT=0

echo "============================================="
echo " Log File Analyzer"
echo "============================================="
echo "Log File : $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "---------------------------------------------"


if [ ! -f "$LOGFILE" ]; then
    echo "Error: File '$LOGFILE' not found."
    echo "Usage: ./script4.sh <logfile> <keyword>"
    exit 1
fi


while [ ! -s "$LOGFILE" ]; do
    echo "Warning: $LOGFILE is empty."
    read -p "Enter a different log file path: " LOGFILE

   
    if [ ! -f "$LOGFILE" ]; then
        echo "File not found. Exiting."
        exit 1
    fi
done


while IFS= read -r LINE; do

    
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))        
    fi

done < "$LOGFILE"                  

echo "============================================="
echo "Keyword '$KEYWORD' found $COUNT times"
echo "in $LOGFILE"
echo "============================================="


echo "Last 5 lines containing '$KEYWORD':"
echo "---------------------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "============================================="
