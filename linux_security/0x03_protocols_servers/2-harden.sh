#!/bin/bash

# Find and secure world-writable directories (excluding /proc)  
find / -type d -perm -0002 ! -path "/proc/*" -print -exec chmod o-w {} \;
