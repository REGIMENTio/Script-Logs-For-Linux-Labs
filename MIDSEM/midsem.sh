#!/bin/bash
# ===== Daily System Logger Script (Exp3) =====
# Author: Tanmay Amit Verma
# Date: 2025-10-19

# Directories
LOG_DIR="$HOME/daily_logs"
ARCHIVE_DIR="$LOG_DIR/archive"

# Create directories if they don't exist
mkdir -p "$LOG_DIR" "$ARCHIVE_DIR"

# Log file name
LOG_FILE="$LOG_DIR/log_$(date +%Y-%m-%d).txt"

# Write system information to the log
{
  echo "============================="
  echo "System Log for: $(date)"
  echo "User: $(whoami)"
  echo "============================="
  echo
  echo "Uptime:"
  uptime
  echo
  echo "Top 5 CPU-consuming processes:"
  ps -eo pid,comm,%mem,%cpu --sort=-%cpu | head -n 6
  echo
  echo "Disk Usage:"
  df -h
} > "$LOG_FILE"

echo "Log created successfully at $LOG_FILE"

# Move logs older than 7 days to archive
find "$LOG_DIR" -name "log_*.txt" -mtime +7 -exec mv {} "$ARCHIVE_DIR" \;

# Compress weekly logs every Sunday (day 7)
if [ "$(date +%u)" -eq 7 ]; then
  tar -czf "$ARCHIVE_DIR/weeklylogs_$(date +%Y-%m-%d).tar.gz" -C "$ARCHIVE_DIR" .
  echo "Weekly archive created."
fi

# Send the log via local email
if [ -f "$LOG_FILE" ]; then
    mail -s "Daily System Log - $(date +%Y-%m-%d)" tanmay@localhost < "$LOG_FILE"
    echo "Log emailed to local mailbox: tanmay@localhost"
else
    echo "No log file found for today!"
fi

-
