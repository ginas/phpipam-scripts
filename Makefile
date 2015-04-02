# Makefile for phpipam-scripts

PREFIX ?= /usr/local

all: install

install:
	@install -o root -g root -m 0755 phpipam-hosts ${PREFIX}/sbin/phpipam-hosts
	@install -o root -g root -m 0755 phpipam-hosts-wrapper ${PREFIX}/sbin/phpipam-hosts-wrapper

clean:
	@rm -f ${PREFIX}/sbin/phpipam-hosts
	@rm -f ${PREFIX}/sbin/phpipam-hosts-wrapper

