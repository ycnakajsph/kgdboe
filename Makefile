#Generated by VisualKernel [http://visualkernel.com/].
#Use VisualKernel Project Properties to edit.

KERNEL_MODULE_NAME := kgdboe
#KERNEL_MODULE_OBJECT_FILE_LIST := irqsync.o kgdboe_main.o kgdboe_io.o nethook.o netpoll_wrapper.o poll_copy.o spinhook.o timerhook.o

obj-m := kgdboe.o
kgdboe-y := irqsync.o kgdboe_main.o kgdboe_io.o nethook.o netpoll_wrapper.o poll_copy.o spinhook.o timerhook.o 
#$(KERNEL_MODULE_NAME)-y += $(KERNEL_MODULE_OBJECT_FILE_LIST)

#obj-m := kgdboe.o

ccflags-y := -ggdb -O0 -std=gnu99

PWD := $(shell pwd)

all:
	make ARCH=arm CROSS_COMPILE=$(CROSS) -C $(KERNEL) SUBDIRS=$(PWD) modules
clean:
	make -C $(KERNEL) SUBDIRS=$(PWD) clean
