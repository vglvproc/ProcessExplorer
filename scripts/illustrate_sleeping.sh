#!/bin/bash
# illustrate_sleeping.sh: Script to demonstrate a process in the Sleeping state

echo "Starting a process that will sleep for 10 seconds..."

# Start a process that will sleep for 10 seconds
sleep 10 &
PID=$!

# Display the process state every 2 seconds
for i in {1..5}; do
  ps -p $PID -o pid,state,cmd
  sleep 2
done

# Wait for the process to finish
wait $PID
echo "Process has finished."