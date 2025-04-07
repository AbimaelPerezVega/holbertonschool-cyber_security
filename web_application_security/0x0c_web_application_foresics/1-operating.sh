#!/bin/bash

# Extract and print the Linux version line from the dmesg file
grep -m 1 "Linux version" dmesg
