#!/bin/bash

# Check if the log file is passed as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <log_file>"
  exit 1
fi

# Identify the IP address with the most requests
attacker_ip=$(awk '{print $1}' "$1" | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')

# Count the total number of requests made by the attacker
request_count=$(grep -c "^$attacker_ip" "$1")

# Output the result
echo "$request_count"
