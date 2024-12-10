#!/bin/bash
whois "$1" | awk -v domain="$1.csv" 'BEGIN {FS=": "; OFS=","} /Registrant|Admin|Tech/ {type=$1} /Name|Organization|Street|City|State\/Province|Postal Code|Country|Phone|Fax|Email/ {gsub(" ", "$", $2); print type, $1, $2 > domain}'
