#!/bin/bash

# Ask the user for PID
read -p "Enter the PID of the process: " pid

# Display process details
echo "Details for PID $pid:"
ps -p "$pid" -o pid,ppid,state,comm,%mem,%cpu

