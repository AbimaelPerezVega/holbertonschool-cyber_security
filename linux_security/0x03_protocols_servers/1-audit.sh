#!/bin/bash

# Display non-commented, non-empty lines from /etc/ssh/sshd_config
grep -E "^[^#]" /etc/ssh/sshd_config
