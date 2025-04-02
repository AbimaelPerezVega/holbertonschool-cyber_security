#!/bin/bash

# Check if the log file is passed as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <log_file>"
  exit 1
fi

# Identify the IP address with the most requests (attacker)
attacker_ip=$(awk '{print $1}' "$1" | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')

# Filter requests made by the attacker and extract the User-Agent field (usually the 12th field)
# Then count the occurrences of each User-Agent to determine which tool/library was used
library=$(grep "^$attacker_ip" "$1" | awk -F'"' '{print $6}' | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')

# Output the result
echo "$library"
