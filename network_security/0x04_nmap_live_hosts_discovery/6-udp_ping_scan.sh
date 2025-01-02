#!/bin/bash
sudo nmap -n -p 53,161,162 --open -sn -v $1