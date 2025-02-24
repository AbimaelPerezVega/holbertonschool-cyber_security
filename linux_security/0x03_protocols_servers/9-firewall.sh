#!/bin/bash

# Flush existing rules, allow SSH, and block all other incoming traffic
iptables -F && iptables -A INPUT -p tcp --dport 22 -j ACCEPT && iptables -A INPUT -j DROP
