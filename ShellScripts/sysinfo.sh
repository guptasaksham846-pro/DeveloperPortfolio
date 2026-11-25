#!/usr/bin/env bash
# Author: Saksham Gupta

echo "Name: Saksham Gupta | Roll No: 2601730443 | Date: $(date)"
echo "------------------------------------------------------------"
lscpu | grep -E "Model name|CPU\(s\):" | sed 's/^[ \t]*//'
free -h | awk '/^Mem:/ {print "Total Memory: " $2 " | Used Memory: " $3}'
echo "--- Top 3 Processes by CPU ---"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4
echo "------------------------------------------------------------"
echo "Report generated successfully."
