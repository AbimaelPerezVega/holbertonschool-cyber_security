#!/bin/bash

# Analyze the last 1000 lines of the auth.log file
LOG_FILE="auth.log"

# Check if the file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "auth.log not found"
    exit 1
fi

# Analyze log: look for users with multiple failed attempts followed by a successful login
tail -n 1000 "$LOG_FILE" | \
awk '/Failed password/ {fail[$NF]++} /Accepted password/ {success[$NF]++} 
     END {
         for (user in success) {
             if (fail[user] >= 2) {
                 print user;
             }
         }
     }'
