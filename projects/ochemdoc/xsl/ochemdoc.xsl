<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:exsl="http://exslt.org/common"
  extension-element-prefixes="exsl"
  xmlns="http://www.w3.org/1999/xhtml" 
  xmlns:m= "http://www.sciml.org/ochemdoc"
  version="1.0">

  <xsl:output method="xml" encoding="utf-8"/>

  <xsl:template match="/">
    <xsl:comment>Automatically Generated!</xsl:comment>
    <html>
      <body bgcolor="#FFFFFF">
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="m:math">
    <xsl:choose>
      <xsl:when test="@class='display'">
        <div style="display:block;font-style:italic;text-align:center"><xsl:apply-templates/></div>
      </xsl:when>
      <xsl:otherwise>
        <span style="font-style:italic"><xsl:apply-templates/></span>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="m:share">
    <xsl:variable name="href" select="substring-after(@href,'#')"/>
    <xsl:apply-templates select="exsl:node-set(//*[@id=$href])"/>
  </xsl:template>

  <xsl:template match="m:ochemdoc|m:assertion|m:CMP">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="m:apply[m:eq[position()=1]]">
    <xsl:apply-templates select="*[2]"/>
    <xsl:text>=</xsl:text>
    <xsl:apply-templates select="*[3]"/>
  </xsl:template>

  <xsl:template match="m:apply[m:plus[position()=1]]">
    <xsl:apply-templates select="*[2]"/>
    <xsl:text>+</xsl:text>
    <xsl:apply-templates select="*[3]"/>
  </xsl:template>

  <xsl:template match="m:apply[m:times[position()=1]]">
    <xsl:apply-templates select="*[2]"/>
    <xsl:text>*</xsl:text>
    <xsl:apply-templates select="*[3]"/>
  </xsl:template>

  <xsl:template match="m:compound">
    <xsl:apply-templates select="*[1]"/>
    <xsl:text>.</xsl:text>
    <xsl:apply-templates select="*[2]"/>
  </xsl:template>

  <xsl:template match="m:apply[m:csymbol[position()=1 and @cd='foundations' and @name='concentration']]">
    <xsl:text>[</xsl:text>
    <xsl:apply-templates select="*[2]"/>
    <xsl:text>]</xsl:text>
  </xsl:template>

  <xsl:template match="m:csymbol[position()=1 and @cd='foundations' and @name='rgas']">
    <xsl:text>r</xsl:text><sub>gas</sub>
  </xsl:template>

  <xsl:template match="m:csymbol[position()=1 and @cd='rateconstants']">
    <xsl:text>k</xsl:text><sub><xsl:value-of select="@name"/></sub>
  </xsl:template>

  <xsl:template match="m:csymbol[@cd='cml']">
    <xsl:value-of select="@name"/>
  </xsl:template>

</xsl:stylesheet>
