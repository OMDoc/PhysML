<?xml version="1.0" standalone="yes"?>
<!--
    an xsl style sheet for presenting openmath symbols used in the 
    OMDoc document with id=ga1-omdoc.
  
    This xsl style file is automatically generated, do not edit!
  -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:exsl="http://exslt.org/common" version="1.0" exsl:dummy="to get the namespace right" extension-element-prefixes="exsl"><xsl:variable name="tree"><catalogue for="#ring"><loc theory="relation1" omdoc="../external/omdoc/branches/omdoc-1.2/examples/omstd/relation1.omdoc#relation1"/><loc theory="quant1" omdoc="../external/omdoc/branches/omdoc-1.2/examples/omstd/quant1.omdoc#quant1"/><loc theory="simpletypes" omdoc="../external/omdoc/branches/omdoc-1.2/examples/logics/simpletypes.omdoc#simpletypes"/></catalogue></xsl:variable>

<xsl:variable name="href-cat" select="exsl:node-set($tree)"/>

<xsl:include href="gatest-bham-tmpl.xsl"/><xsl:include href="../external/omdoc/branches/omdoc-1.2/examples/omstd/relation1-tmpl.xsl"/><xsl:include href="../external/omdoc/branches/omdoc-1.2/examples/omstd/quant1-tmpl.xsl"/><xsl:include href="../external/omdoc/branches/omdoc-1.2/examples/logics/simpletypes-tmpl.xsl"/></xsl:stylesheet>
