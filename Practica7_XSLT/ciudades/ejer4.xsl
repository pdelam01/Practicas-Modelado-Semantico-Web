<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <ciudades>
      <xsl:apply-templates select="/ciudades/ciudad"/>
    </ciudades>
  </xsl:template>

  <xsl:template match="ciudad">
    <xsl:copy>
      <xsl:element name="nombre">
        <xsl:value-of select="@nombre"/>
      </xsl:element>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>