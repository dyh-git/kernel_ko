.PHONY:all clean
ifneq ($(KERNELRELEASE),)
 
obj-m := hello.o
 
else
		
EXTRA_CFLAGS += -DDEBUG 
KDIR := /home/dyh/project/qemu/tools/linux-4.14.214
all:
	make  CROSS_COMPILE=arm-linux-gnueabi- ARCH=arm -C $(KDIR) M=$(PWD) modules
clean:
	rm -fr *.ko *.o *.mod.o *.mod.c *.symvers *.order .*.ko .tmp_versions
 
endif