all: draft-pkcs11-trust-assertions.txt html/index.html

draft-pkcs11-trust-assertions.txt: draft-pkcs11-trust-assertions.xml
	xml2rfc $<

html/index.html: docbook-params.xsl trust-assertions.xml
	xmlto --skip-validation -o html/ -x docbook-params.xsl xhtml trust-assertions.xml
