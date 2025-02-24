#!/bin/bash

# Scan for NFS shares on the target IP
showmount -e "$1"
