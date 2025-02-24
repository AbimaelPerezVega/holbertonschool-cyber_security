#!/bin/bash

# Scan for weak SSL/TLS ciphers on the target IP using Nmap
nmap --script ssl-enum-ciphers -p 443 "$1"
