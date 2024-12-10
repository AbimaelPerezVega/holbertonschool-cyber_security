#!/bin/bash
subfinder -d "$1" -silent -nW -o "$1.txt" -oI | xargs -I{} sh -c 'echo {},$(dig +short {} | head -n 1)' > "$1.txt"
