#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    pid_t pid = fork(); // Create a child process

    if (pid > 0) {
        // This is the parent process
        printf("Parent process PID: %d\n", getpid());
        printf("Child process PID: %d\n", pid);

        // Delay the parent so it does not call wait()
        sleep(30); // 30 seconds while the zombie exists
    } else if (pid == 0) {
        // This is the child process
        printf("Child process is exiting...\n");
        exit(0); // The child process finishes execution
    } else {
        perror("fork failed");
        exit(1);
    }

    return 0;
}