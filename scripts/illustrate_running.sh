#!/bin/bash
# illustrate_running.sh: Script to demonstrate a process in the Running state

echo "Starting a process in the running state..."

# Start an infinite loop in the background
while :; do :; done &
PID=$!

# Display the process state every 2 seconds
for i in {1..5}; do
  ps -p $PID -o pid,state,cmd
  sleep 2
done

# Terminate the process
kill $PID
echo "Process has been terminated."