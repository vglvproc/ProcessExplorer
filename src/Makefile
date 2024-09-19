CC = gcc
CFLAGS = -Wall

all: create_zombie create_stopped

create_zombie: create_zombie.c
	$(CC) $(CFLAGS) -o create_zombie create_zombie.c

create_stopped: create_stopped.c
	$(CC) $(CFLAGS) -o create_stopped create_stopped.c

clean:
	rm -f create_zombie create_stopped
