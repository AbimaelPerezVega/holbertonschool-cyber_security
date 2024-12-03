#!/bin/bash
ps -u "$1" -eo user,pid,vsz,rss,command | grep -v ' 0 0 '
