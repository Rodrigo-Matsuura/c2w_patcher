CC = gcc
CFLAGS = -O3 -Wall -Wextra
TARGET = c2w_patcher

SRCS = main.c rijndael.c sha1.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

release: clean all
	zip -r c2w_patcher_linux.zip $(TARGET) README.md LICENSE build.bat build.sh Makefile .clang-format main.c sha1.c sha1.h rijndael.c rijndael.h
