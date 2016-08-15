CROSS_COMPILE ?=
KDIR ?=

CC	:= $(CROSS_COMPILE)gcc
CFLAGS	?= -O2 -W -Wall -std=gnu99 -I$(KDIR)/usr/include -I/usr/include/libdrm
LDFLAGS	?=
LIBS	:= -lrt -ldrm

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $<

all: dmabuf-sharing

dmabuf-sharing: dmabuf-sharing.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	-rm -f *.o
	-rm -f dmabuf-sharing
