.POSIX:

OS = $(shell uname -s)
ifndef PREFIX
  PREFIX = /usr/local
endif
MANPREFIX = $(PREFIX)/share/man

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin/
	for script in bin/*; do \
		cp -f $$script $(DESTDIR)$(PREFIX)/bin/; \
		chmod 755 $(DESTDIR)$(PREFIX)/$$script; \
	done
	mkdir -p $(DESTDIR)$(PREFIX)/share/radar
	chmod 755 $(DESTDIR)$(PREFIX)/share/radar
	for file in share/*; do \
		cp -f $$file $(DESTDIR)$(PREFIX)/share/radar/; \
	done
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp -f radar.1 $(DESTDIR)$(MANPREFIX)/man1/radar.1
	chmod 644 $(DESTDIR)$(MANPREFIX)/man1/radar.1
	if [ "$(PREFIX)" ]; then \
		sed -iba 's:/usr/local:$(PREFIX):' $(DESTDIR)$(PREFIX)/bin/radar; \
	fi

uninstall:
	for script in bin/*; do \
		rm -f $(DESTDIR)$(PREFIX)/bin/$$script; \
	done
	for file in share/*; do \
		rm -f $(DESTDIR)$(PREFIX)/share/radar/$$file; \
	done
	rm -rf $(DESTDIR)$(PREFIX)/bin/radar
	rm -r $(DESTDIR)$(MANPREFIX)/man1/radar.1

PHONY: install uninstall
