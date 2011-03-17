all: trust-assertions.html

trust-assertions.html: docbook-params.xsl trust-assertions.xml Makefile
	xmlto -vv html-nochunks trust-assertions.xml

upload: all
	rsync -v trust-assertions.html anarchy.freedesktop.org:/srv/p11-glue.freedesktop.org/www/doc/pkcs11-trust-assertions/index.html
