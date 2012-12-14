
   VERSION := 5.3.19

.PHONY: fetch build

usage:
	@echo "usage: make [clean|fetch|unpack|build]"

clean:
	rm -rf php-$(VERSION)

realclean:
	rm -f *.tar.bz2

fetch: php-$(VERSION).tar.bz2

php-$(VERSION).tar.bz2:
	wget -O php-$(VERSION).tar.bz2 http://us1.php.net/get/php-$(VERSION).tar.bz2/from/this/mirror

unpack:
	tar xjf php-$(VERSION).tar.bz2

build:
	(cd php-$(VERSION); sh ../bin/build.sh)


