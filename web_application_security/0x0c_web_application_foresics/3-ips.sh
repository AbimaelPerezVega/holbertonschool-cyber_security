#!/bin/bash

# File to analyze
LOG_FILE="auth.log"

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "auth.log not found"
    exit 1
fi

# Extract unique IPs from successful login attempts
grep "Accepted password" "$LOG_FILE" | \
    grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+' | \
    sort -u | wc -l
