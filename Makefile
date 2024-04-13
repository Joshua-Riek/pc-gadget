STAGEDIR ?= stage
DESTDIR ?= install

default: server

server: gadget stage

desktop: gadget stage

stage:
	mkdir -p $(DESTDIR)
	cp -ra includes/ $(DESTDIR)

gadget:
	mkdir -p $(DESTDIR)/meta
	cp gadget.yaml $(DESTDIR)/meta/

clean:
	-rm -rf $(DESTDIR)
