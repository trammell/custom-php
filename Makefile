
   VERSION := 5.3.19

.PHONY: fetch build

usage:
	@echo "usage: make [clean|fetch|unpack|build]"

clean:
	rm -f *.tar.bz2
	rm -rf php-$(VERSION)

fetch: php-$(VERSION).tar.bz2

php-$(VERSION).tar.bz2:
	wget -O php-$(VERSION).tar.bz2 http://us1.php.net/get/php-$(VERSION).tar.bz2/from/this/mirror

unpack:
	tar xjf php-$(VERSION).tar.bz2

build:


