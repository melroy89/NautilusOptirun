PACKAGE=NautilusOptirun
EXTENSIONS_DIR=/usr/share/nautilus-python/extensions/
PIXMAPS_DIR=/usr/share/pixmaps/

all:

install: make-install-dirs
	install -m 755 $(PACKAGE).py $(DESTDIR)$(EXTENSIONS_DIR)
	install -m 644 $(PACKAGE).svg $(DESTDIR)$(PIXMAPS_DIR)

make-install-dirs:
	mkdir -p $(DESTDIR)$(EXTENSIONS_DIR)
	mkdir -p $(DESTDIR)$(PIXMAPS_DIR)

uninstall:
	rm $(DESTDIR)$(EXTENSIONS_DIR)$(PACKAGE).py
	rm $(DESTDIR)$(PIXMAPS_DIR)$(PACKAGE).svg

clean:
	rm -f *-stamp
	find . -type f -iregex '.*~$$'  -print | xargs rm -rf
	find . -type f -iregex '.*\.pyc$$'  -print | xargs rm -rf
	find . -type f -iregex '.*\.bak$$'  -print | xargs rm -rf


