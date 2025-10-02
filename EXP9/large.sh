#!/bin/bash

dir="$1"

if [ -z "$dir" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

find "$dir" -type f -exec du -b {} + 2>/dev/null | sort -nr | head -n 1

