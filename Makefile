SOURCES=boot.o main.o io.o console.o flush.o int.o tables.o isr.o mem.o keyboard.o time.o ramdisk.o load_driver.o system_call.o stream.o

CFLAGS=-nostdlib -nostdinc -fno-builtin -fno-stack-protector
LDFLAGS=-Tlink.ld
ASFLAGS=-felf

all: $(SOURCES) link

clean:
	-rm *.o kernel

link:
	ld $(LDFLAGS) -o kernel $(SOURCES)

.s.o:
	nasm $(ASFLAGS) $<
