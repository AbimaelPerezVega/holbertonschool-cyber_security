#!/bin/bash

# Set default log file if not provided
LOG_FILE=${1:-logs.txt}

# Ensure the file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Identify the attacker's IP
ATTACKER_IP=$(awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')

# Extract User-Agent associated with the attacker
USER_AGENT=$(grep "^$ATTACKER_IP " "$LOG_FILE" | awk -F '\"' '{print $6}' | sort | uniq -c | sort -nr | head -n 1 | awk '{$1=""; print $0}' | sed 's/^ //')

# Print the most used User-Agent
echo "$USER_AGENT"
