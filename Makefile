KERNEL_MODULE_NAME := kgdboe

obj-m := kgdboe.o
kgdboe-y := irqsync.o kgdboe_main.o kgdboe_io.o nethook.o netpoll_wrapper.o poll_copy.o spinhook.o timerhook.o 

ccflags-y := -ggdb -O0 -std=gnu99

PWD := $(shell pwd)

all:
	make ARCH=arm CROSS_COMPILE=$(CROSS) -C $(KERNEL) SUBDIRS=$(PWD) modules
clean:
	make -C $(KERNEL) SUBDIRS=$(PWD) clean
