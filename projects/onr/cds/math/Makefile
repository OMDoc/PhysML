PREFIX 		= ../../../..
BINDIR 		= $(PREFIX)/bin/stex
DIRS		= 
TARGET.base	= arith
TARGET.omdoc 	= $(TARGET.base:%=%.omdoc)
TARGET.tex.xml	= $(TARGET.base:%=%.tex.xml)
TARGET.xml	= $(TARGET.base:%=%.xml)
TARGET.pdf 	= $(TARGET.base:%=%.pdf)

LATEXML		= latexml 
LATEXMLPOST	= latexmlpost 

SMS	= $(TARGET.base:%=%.sms)

all::		$(SMS) $(TARGET.pdf) #$(TARGET.cnx) 

$(SMS): 	%.sms: %.tex $(BINDIR)/sms 
		$(BINDIR)/sms $<

$(TARGET.pdf): 	%.pdf: %.tex 
		pdflatex $<

#$(TARGET.tex.xml): %.tex.xml: %.tex ../sty/cnx.ltxml
#		$(LATEXML) $< --path=../sty > $@ 

#$(TARGET.xml): %.xml: %.tex.xml 
#		$(LATEXMLPOST) --cmml $< > $@ 

#$(TARGET.cnx): %.cnxml: %.xml 
#		xsltproc -o $@ xsl/ltxml2cnx.xsl $< 

#$(TARGET.pdf): %.pdf: %.tex 
#		pdflatex $<

