#!/bin/bash
# Check the process is running or not, if not running start it and also maintain the log file

LOG=/var/log/monitoring_log
echo "Write the process name  of the process you want to see"
read process_name
if ! pgrep "${process_name}" > /dev/null;
# if ! ps -ef | grep -v grep | grep -w "${process_name}" > /dev/null;
then
        echo "Process is not running"
        systemctl start ${process_name} | sudo tee -a "${LOG}"
else
        echo "process is running"
        echo "$(date): process is running" | sudo tee -a "${LOG}"
fi
