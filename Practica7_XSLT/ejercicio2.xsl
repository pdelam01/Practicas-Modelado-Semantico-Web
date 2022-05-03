<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <pedido>
            <xsl:apply-templates select="/libros/libro"/>
        </pedido>
    </xsl:template>

    <xsl:template match="libro">
        <xsl:copy>
            <xsl:element name="titulo">
                <xsl:attribute name="isbn">
                    <xsl:value-of select="@isbn"/>
                </xsl:attribute>
                <xsl:value-of select="titulo"/>
            </xsl:element>
            
            <xsl:apply-templates select="autores/autor"/>

            <xsl:apply-templates select="editorial"/>

        </xsl:copy>
    </xsl:template>

    <xsl:template match="autor">
        <xsl:copy>
            <xsl:attribute name="nombreCompleto">
                <xsl:value-of select="nombre"/> <xsl:text> </xsl:text>
                <xsl:value-of select="primerApellido"/> <xsl:text> </xsl:text>
                <xsl:value-of select="segundoApellido"/>
            </xsl:attribute>

            <xsl:element name="idAutor">
                <xsl:value-of select="@idAutor"/>
            </xsl:element>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="editorial">
    <xsl:copy>
        <xsl:attribute name="idEditorial">
            <xsl:value-of select="@idEditorial"/>
        </xsl:attribute>

        <xsl:element name="nombreEd">
            <xsl:value-of select="nombre"/>
        </xsl:element>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>