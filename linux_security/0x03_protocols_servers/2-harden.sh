#!/bin/bash
find / -type d -perm -0002 ! -path "/proc/*" -print -exec chmod o-w {} \;
