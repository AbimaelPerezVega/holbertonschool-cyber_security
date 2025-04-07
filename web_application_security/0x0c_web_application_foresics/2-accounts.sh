#!/bin/bash

LOG_FILE="auth.log"

# Check if the log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "auth.log not found"
    exit 1
fi

# Extract the last 1000 lines and analyze failed/successful logins
tail -n 1000 "$LOG_FILE" | awk '
/Failed password/ {
    for (i = 1; i <= NF; i++) {
        if ($i == "for") {
            user = $(i + 1)
            failed[user]++
            break
        }
    }
}

/Accepted password/ {
    for (i = 1; i <= NF; i++) {
        if ($i == "for") {
            user = $(i + 1)
            success[user]++
            break
        }
    }
}

END {
    for (user in success) {
        if (failed[user] >= 2)
            print user
    }
}'
