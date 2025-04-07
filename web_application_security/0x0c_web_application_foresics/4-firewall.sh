#!/bin/bash

# File to analyze
LOG_FILE="auth.log"

# Check if file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "auth.log not found"
    exit 1
fi

# Count lines that indicate a firewall rule has been added
grep -i "Added firewall rule" "$LOG_FILE" | wc -l
