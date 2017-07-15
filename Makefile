PREFIX = /usr

all: check

check:
	gtk-update-icon-cache Marea || exit 101
	-rm -f Marea/icon-theme.cache

check-name-unique:
	find Marea -name "*.svg" | xargs -n1 basename | sort | uniq -d | xargs -I '{}' find -name '{}'
check-same-icon:
	find Marea -type f | xargs md5sum | sort | uniq --check-chars=32 -d

prepare: check-name-unique check-same-icon
	mkdir -p build

build: prepare convert debian/links

convert:
	mkdir -p build
	python tools/convert.py Marea build

clean:
	rm -rf build

install: install-icons

install-icons:
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons/Marea
	cp -r Marea/* $(DESTDIR)$(PREFIX)/share/icons/Marea
	mkdir -p $(DESTDIR)$(PREFIX)/share/icons/Marea
	cp -r Marea/* $(DESTDIR)$(PREFIX)/share/icons/Marea

