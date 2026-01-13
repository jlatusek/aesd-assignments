#!/bin/bash

writefile="$1"
writestr="$2"

if [ -z "$writefile" ]; then
    echo "Error: Missing filename argument."
    echo "Usage: ./writer.sh <filename> <content>"
    exit 1
fi

if [ -z "$writes" ]; then
    echo "Error: Missing filename argument."
    echo "Usage: ./writer.sh <filename> <content>"
    exit 1
fi

mkdir -p "$(dirname "$writefile")"
echo -n "$writestr" > "$writefile"
