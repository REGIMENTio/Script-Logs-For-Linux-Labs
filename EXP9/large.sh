
#!/bin/bash
echo "Enter directory path:"
read dir
if [ ! -d "$dir" ]; then
echo "Invalid directory!"
exit 1
fi
largest=$(find "$dir" -type f -printf "%s %p\n" | sort -nr | head -1)
echo "Largest file:"
echo "$largest"

