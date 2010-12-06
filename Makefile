all: html/index.html

html/index.html: docbook-params.xsl trust-assertions.xml
	xmlto --skip-validation -o html/ -x docbook-params.xsl xhtml trust-assertions.xml
