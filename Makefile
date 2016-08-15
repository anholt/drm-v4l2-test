CROSS_COMPILE ?=

CC	:= $(CROSS_COMPILE)gcc
CFLAGS	?= -O2 -W -Wall -std=gnu99 `pkg-config --cflags libdrm`
LDFLAGS	?=
LIBS	:= -lrt -ldrm `pkg-config --libs libdrm`

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

all: dmabuf-sharing

dmabuf-sharing: dmabuf-sharing.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	-rm -f *.o
	-rm -f dmabuf-sharing
