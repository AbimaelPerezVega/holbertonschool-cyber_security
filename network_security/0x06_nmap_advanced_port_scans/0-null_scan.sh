#!/bin/bash

# Check if the user provided a host as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <host>"
    exit 1
fi

HOST=$1

# Run the NULL scan using nmap
echo "Performing TCP NULL scan on $HOST (ports 20-25)..."
sudo nmap -sN -p 20-25 $HOST