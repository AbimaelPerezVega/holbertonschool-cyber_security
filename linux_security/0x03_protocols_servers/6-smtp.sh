#!/bin/bash

# Check for STARTTLS configuration in Postfix; return a message if missing
grep -E "^smtpd_tls_security_level" /etc/postfix/main.cf || echo "STARTTLS not configured"
