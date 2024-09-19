#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>

int main() {
    pid_t pid = fork();

    if (pid == -1) {
        // Error creating the process
        perror("fork failed");
        return 1;
    }

    if (pid == 0) {
        // Child process
        printf("Child process (PID: %d) created but will stop.\n", getpid());
        kill(getpid(), SIGSTOP);  // Stop the process
        printf("Child process is now running.\n");
        return 0;
    } else {
        // Parent process
        printf("Parent process (PID: %d) created child process (PID: %d).\n", getpid(), pid);

        // Wait for a while to show that the child process has been created
        sleep(3);

        // Continue the execution of the child process
        kill(pid, SIGCONT);

        // Wait for the child process to finish
        wait(NULL);
        printf("Child process finished.\n");
    }

    return 0;
}