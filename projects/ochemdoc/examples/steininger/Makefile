TARGET.base = diss215
TARGET.xhtml = $(TARGET.base:%=%.xhtml)
TARGET.ocdoc = $(TARGET.base:%=%.ocdoc)

all:	$(TARGET.xhtml)

$(TARGET.xhtml): %.xhtml: %.ocdoc ochemdoc.xsl 
	xsltproc -o $@ ochemdoc.xsl $(firstword $<)
