<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Información sobre ciudades.con menos de 1000000 habitantes</title>
            </head>
            <body>
                <h3>Información sobre ciudades.con menos de 1000000 habitantes</h3>
                <br/>
                <xsl:apply-templates select="/ciudades/ciudad"/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="ciudad">
        <xsl:choose>
            <xsl:when test="habitantes &gt; 500000">
                <p><xsl:value-of select="nombre"/> gran ciudad </p>
            </xsl:when>
            <xsl:otherwise>
                <p><xsl:value-of select="nombre"/> pequeña ciudad</p>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>