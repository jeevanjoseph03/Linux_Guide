#!/bin/bash

# --------------------------------
# Monitor Any Linux Log in Realtime
# --------------------------------

LOG_PATH=${1:-/var/log/syslog}

echo "🔍 Monitoring log file: $LOG_PATH"
echo "Press CTRL + C to stop."

sudo tail -f $LOG_PATH
