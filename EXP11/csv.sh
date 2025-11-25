i#!/bin/bash
echo "Enter CSV filename:"
read filename
if [ ! -f "$filename" ]; then
echo "Error: File '$filename' not found!"
exit 1
fi
echo "First column values:"
echo "-------------------"
cut -d',' -f1 "$filename"






