#!/bin/bash

LOG_FILE="auth.log"

# Ensure file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "auth.log not found"
    exit 1
fi

# Analyze last 1000 lines for failed and accepted login attempts
tail -n 1000 "$LOG_FILE" | \
awk '
/Failed password/ {
    if ($(NF-5) == "for")
        failed[$(NF-4)]++
}
/Accepted password/ {
    if ($(NF-5) == "for")
        success[$(NF-4)]++
}
END {
    for (user in success) {
        if (failed[user] >= 2)
            print user
    }
}'
