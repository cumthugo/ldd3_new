
SUBDIRS =  misc-progs misc-modules \
           scull scullc scullp scullv short snull skull sculld sbull \
	   shortprint pci simple usb  lddbus tty

all: subdirs

subdirs:
	for n in $(SUBDIRS); do $(MAKE) -C $$n || exit 1; done

clean:
	for n in $(SUBDIRS); do $(MAKE) -C $$n clean; done
