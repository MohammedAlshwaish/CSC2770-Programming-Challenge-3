CC = gcc
CFLAGS = -Wall -pthread

SRCS = TimeCom.c
OBJS = $(SRCS:.c=.o)
TARGET = TimeCom

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

