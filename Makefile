all: html/index.html

html/index.html: docbook-params.xsl trust-assertions.xml Makefile
	xmlto -vv html-nochunks trust-assertions.xml
