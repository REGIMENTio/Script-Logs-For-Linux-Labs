#!/bin/bash

count=$(find /home/user -maxdepth 1 -type f -name "*.sh" | wc -l)
echo "Number of .sh files in /home/user: $count"