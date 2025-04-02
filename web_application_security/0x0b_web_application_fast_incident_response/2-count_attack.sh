#!/bin/bash

# Set default log file if not provided
LOG_FILE=${1:-logs.txt}

# Ensure the file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Extract the most frequent IP address (attacker)
ATTACKER_IP=$(awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')

# Count the number of requests from the attacker
ATTACK_COUNT=$(grep -c "^$ATTACKER_IP " "$LOG_FILE")

# Print the number of requests
echo "$ATTACK_COUNT"
