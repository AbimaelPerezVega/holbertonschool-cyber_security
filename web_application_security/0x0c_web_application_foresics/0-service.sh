#!/bin/bash

# Path to the log file
LOG_FILE="auth.log"

# Check if log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found!"
    exit 1
fi

# Extract service names from pam_unix log entries and count occurrences
grep "pam_unix" "$LOG_FILE" | \
    grep -oP 'pam_unix\(\K[^:]+' | \
    sort | uniq -c | sort -nr | \
    head -n 1 | awk '{print $2}'
