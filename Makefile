CC = gcc
CFLAGS = -g -Wall
OBJS = src/server.c src/workqueue.c
LDFLAGS = -levent -lpthread
TARGET = build/server.o

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -g -o $@ $(LDFLAGS)

clean:
	rm -f $(TARGET)
