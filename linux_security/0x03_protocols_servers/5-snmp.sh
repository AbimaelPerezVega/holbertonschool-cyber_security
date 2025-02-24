#!/bin/bash

# Search for SNMP public access settings in snmpd.conf
grep -E "^(com2sec|rocommunity).*public" /etc/snmp/snmpd.conf
