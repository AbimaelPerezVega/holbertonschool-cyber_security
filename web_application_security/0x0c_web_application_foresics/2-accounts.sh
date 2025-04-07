#!/bin/bash

LOG_FILE="auth.log"

# Ensure file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "auth.log not found"
    exit 1
fi

# Analyze last 1000 lines of auth.log
tail -n 1000 "$LOG_FILE" | awk '
/Failed password for / {
    if ($(6) == "invalid") {
        user=$(8)
    } else {
        user=$(9)
    }
    failed[user]++
}

/Accepted password for / {
    user=$(9)
    success[user]++
}

END {
    for (user in success) {
        if (failed[user] >= 2)
            print user
    }
}'
