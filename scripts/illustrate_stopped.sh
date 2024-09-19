#!/bin/bash
# illustrate_stopped.sh: Script to demonstrate a process in the STOPPED state using SIGSTOP

echo "Compiling the C program..."
(cd ../src && make create_stopped)

echo "Starting the new process and pausing it with SIGSTOP..."

# Start the program, which will create a process and stop it before execution
(cd ../src && ./create_stopped &)

echo "Displaying the process state..."
sleep 1
ps aux | grep '[c]reate_stopped' | grep 'T+'

echo "Process has been created and is waiting for execution (STOPPED state)."

(cd ../src && make clean)
