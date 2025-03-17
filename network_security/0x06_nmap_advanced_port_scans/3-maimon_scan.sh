#!/bin/bash
sudo nmap -sM -sV -p 21,22,23,80,443 -v $1 | grep -iE "http|https"
