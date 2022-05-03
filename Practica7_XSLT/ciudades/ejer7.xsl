<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:template match="/">
 <html>
 <head>
 <title>Ciudades y barrios</title>
 </head>

 <body>
 <h1>Algunas ciudades y sus barrios</h1>
 <xsl:apply-templates select="/ciudades/ciudad">

 </xsl:apply-templates>

 </body>

 </html>
 </xsl:template>

<xsl:template match="ciudad">
 <h1>La ciudad de <xsl:value-of select="nombre"/></h1><br/>
 tiene <xsl:value-of select="habitantes"/> habitantes<br/>
 y estos barrios, entre otros:<br/><ul>
 <xsl:apply-templates select="barrio"/></ul>
</xsl:template>
<xsl:template match="barrio">
 <li><xsl:value-of select="."/></li>
</xsl:template>

</xsl:stylesheet>
