#!/bin/bash
# illustrate_zombie.sh: Script to demonstrate a zombie process

echo "Compiling the C program..."
cd ../src
make

echo "Running the zombie-creating program..."
./create_zombie &  # Start the program in the background
PARENT_PID=$!

# Pause for a few seconds to let the child process become a zombie
sleep 2

# Get the child process PID from the output of the program
CHILD_PID=$(ps --ppid $PARENT_PID -o pid=)

# Display the state of the child process (it should be a zombie)
echo "Displaying the state of the child process..."
ps -p $CHILD_PID -o pid,state,cmd

# Wait for the parent process to finish (it will clean up the zombie)
wait $PARENT_PID
echo "Zombie process has been reaped."

# Clean up the files after completion
make clean