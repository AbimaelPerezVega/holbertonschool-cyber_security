#!/bin/bash
subfinder -d "$1" -silent | xargs -I{} sh -c 'echo {},$(dig +short {} | head -n 1)' > "$1.txt"
