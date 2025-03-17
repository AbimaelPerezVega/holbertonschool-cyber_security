#!/bin/bash
# Scanning FTP (21), SSH (22), Telnet (23), HTTP (80), and HTTPS (443) ports
sudo nmap -sM -p 21,22,23,80,443 -v $1
