#!/bin/bash
while true; do
echo "--- $(date) ---" >> cpu_usage.log
top -bn1 | grep "Cpu(s)" >> cpu_usage.log
echo >> cpu_usage.log
sleep 10
done
