<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <pedido>
            <xsl:apply-templates select="/libros/libro"/>
        </pedido>
    </xsl:template>

    <xsl:template match="libro">
        <libro>
            <xsl:element name="titulo">
                <xsl:attribute name="isbn">
                    <xsl:value-of select="@isbn"/>
                </xsl:attribute>
                <xsl:value-of select="titulo"/>
            </xsl:element>
            
            <autor>
                <xsl:apply-templates select="autores/autor"/>
            </autor>

            <editorial>
                <xsl:apply-templates select="editorial"/>
            </editorial>
        </libro>
    </xsl:template>

    <xsl:template match="autor">
        <xsl:attribute name="nombreC">
            <xsl:value-of select="nombre"/>
            <xsl:value-of select="primerApellido"/>
            <xsl:value-of select="segundoApellido"/>
        </xsl:attribute>

        <xsl:element name="idAutor">
            <xsl:value-of select="@idAutor"/>
        </xsl:element>
    </xsl:template>

    <xsl:template match="editorial">
        <xsl:attribute name="idEditorial">
            <xsl:value-of select="@idEditorial"/>
        </xsl:attribute>

        <xsl:element name="nombreEd">
            <xsl:value-of select="nombre"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>