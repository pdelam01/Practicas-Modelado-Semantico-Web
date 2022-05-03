<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Práctica XSLT</title> 
            </head> 
            <body>
                <h1>Lista de <xsl:value-of select="count(/libros/libro)" /> libros</h1>
                <table width="100%" align="center" border="0">
                    <xsl:apply-templates select="libros/libro"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libro">
    <tr>
      <td bgcolor="lightgreen">
        <img>
          <xsl:attribute name="src">
              <xsl:value-of select="rutaImagen"/>
          </xsl:attribute>
        </img>
	    </td>
      <td bgcolor="lightblue">
        <b>Titulo: </b> <xsl:value-of select="titulo"/> <br/><br/>
        <b>Autor/es: </b> <xsl:apply-templates select="autores/autor"/><br/><br/>
        <b>Editorial: </b> <xsl:value-of select="editorial/nombre"/> <br/><br/>
      </td>
    </tr>
  </xsl:template>
  
  <xsl:template match="autor">
    <xsl:value-of select="nombre"/> 
    <xsl:value-of select="primerApellido"/> 
    <xsl:value-of select="segundoApellido"/>
  </xsl:template>

</xsl:stylesheet>