#!/bin/bash

# File to analyze
LOG_FILE="auth.log"

# Check if the file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "auth.log not found"
    exit 1
fi

# Extract usernames related to account creation from the log
grep -iE "new user|useradd" "$LOG_FILE" | \
grep -oE 'user\s+[^[:space:],]+' | \
awk '{print $2}' | \
sort -u | paste -sd,
