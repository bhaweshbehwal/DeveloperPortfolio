#!/bin/bash
# Author: Bhawesh Behwal

echo "===== Bhawesh kumar | Roll No: 2601730309 | $(date) ====="
echo ""
echo "CPU Model : $(lscpu | grep 'Model name' | cut -d: -f2 | xargs)"
echo "CPU Cores : $(nproc)"
echo ""
free -h | awk '/Mem:/ {print "Total Memory: " $2 "   Used Memory: " $3}'
echo ""
echo "Top 3 Processes by CPU:"
ps aux --sort=-%cpu | head -4 | awk '{print $1, $3"%", $11}'
echo ""
echo "Report generated successfully."
