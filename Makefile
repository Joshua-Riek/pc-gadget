DESTDIR ?= "$(CURDIR)/install"

default: server

server: gadget

desktop: gadget

gadget:
	mkdir -p $(DESTDIR)/meta
	cp gadget.yaml $(DESTDIR)/meta/

clean:
	-rm -rf $(DESTDIR)
