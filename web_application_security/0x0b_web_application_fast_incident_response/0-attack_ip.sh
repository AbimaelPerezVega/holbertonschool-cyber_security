#!/bin/bash

# Check if the log file exists
LOG_FILE="logs.txt"
if [[ ! -f "$LOG_FILE" ]]; then
    echo "Error: Log file '$LOG_FILE' not found."
    exit 1
fi

# Extract IPs, count occurrences, and find the most frequent one
MOST_FREQUENT_IP=$(awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')

# Print the result
echo "$MOST_FREQUENT_IP"