#!/bin/bash
john --wordlist=/usr/share/wordlists/rockyou.txt "$1" && john --show "$1" | tail -n +2 | awk -F ':' '{print $2}' > 4-password.txt
