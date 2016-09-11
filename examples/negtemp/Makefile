PREFIX 		= ..
BINDIR 		= $(PREFIX)/bin
DIRS		= 
TARGET.base	= background neg-temp
TARGET.omdoc 	= $(TARGET.base:%=%.omdoc)
TARGET.tex.xml	= $(TARGET.base:%=%.tex.xml)
TARGET.xml	= $(TARGET.base:%=%.xml)
TARGET.pdf 	= $(TARGET.base:%=%.pdf)

LATEXML		= latexml 
LATEXMLPOST	= latexmlpost 

SMS	= $(TARGET.base:%=%.sms)

all::		$(SMS) # $(TARGET.pdf) #$(TARGET.cnx) 

$(SMS): 	%.sms: %.tex $(BINDIR)/sms 
		$(BINDIR)/sms $<

#$(TARGET.tex.xml): %.tex.xml: %.tex ../sty/cnx.ltxml
#		$(LATEXML) $(firstword $<) --path=../sty > $@ 

#$(TARGET.xml): %.xml: %.tex.xml 
#		$(LATEXMLPOST) --cmml $(firstword $<) > $@ 

#$(TARGET.cnx): %.cnxml: %.xml 
#		xsltproc -o $@ xsl/ltxml2cnx.xsl $(firstword $<) 

#$(TARGET.pdf): %.pdf: %.tex 
#		pdflatex $(firstword $<) 

