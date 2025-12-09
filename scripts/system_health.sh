#!/bin/bash

# ---------------------------------
# Linux System Health Checker Script
# ---------------------------------

echo "📊 System Health Report"
echo "------------------------"

echo "🧠 Memory Usage:"
free -h
echo "------------------------"

echo "💾 Disk Usage:"
df -h
echo "------------------------"

echo "🔥 CPU Load:"
uptime
echo "------------------------"

echo "🧮 Top 5 Memory-Consuming Processes:"
ps aux --sort=-%mem | head -n 6
echo "------------------------"

echo "🧮 Top 5 CPU-Consuming Processes:"
ps aux --sort=-%cpu | head -n 6
echo "------------------------"
