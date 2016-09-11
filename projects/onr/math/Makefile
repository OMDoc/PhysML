PREFIX          = ../external/omdoc/branches/omdoc-1.2
BUTFILES 	= 
COLLFILES	= collection.omdoc 
CSS		= css='omdoccd.css'
include $(PREFIX)/lib/Makefile.vars


all:		4 i html mml

2:		42 i2 mml2

include $(PREFIX)/lib/Makefile.in

%.imports:	%.omdoc imports.xsl
		$(XSLT) -o $@ $(firstword $<) imports.xsl
imports:	$(patsubst %.omdoc, %.imports, $(OMDOCFILES))

opg:	
		$(HOME)/opg/opg.py -p $(HOME)/omdoc/xsl/expres.xsl -i $(HOME)/omdoc/xsl/exincl.xsl - t $(HOME)/omdoc/xsl/omdoc2pmml.xsl $(HOME)/omdoc/examples/omstd/arith1.omdoc
