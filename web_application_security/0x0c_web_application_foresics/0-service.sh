#!/bin/bash

# Extract service names and count occurrences
services=$(grep -oP '\b\w+(?=\()' | sort | uniq -c | sort -nr)

# Output the most frequently occurring service
echo "$services" | head -n 1
