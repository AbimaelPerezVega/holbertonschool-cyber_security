#!/bin/bash

# Script to display current iptables rules with line numbers

# Run iptables command and display rules with line numbers
sudo iptables -L --line-numbers
