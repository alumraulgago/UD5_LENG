<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Duración de menos de 2 minuto</h1>
        <table>
        <tr bgcolor="#009999">
            <th>TituloDelAlbum</th>
            <th>Artista</th>
            <th>SelloDiscografico</th>
            <th>AnnoPublicacion</th>
            <th>TituloCancion</th>
        </tr>
        <xsl:for-each select="Discografica/CD[SelloDiscografico='Columbia Records']">
        <tr>
            <td><xsl:value-of select="TituloDelAlbum"/></td>
            <td><xsl:value-of select="Artista"/></td>
            <td><xsl:value-of select="SelloDiscografico"/></td>
            <td><xsl:value-of select="AnnoPublicacion"/></td>
            <td>   
                <xsl:for-each select="TituloCancion">
                    <xsl:value-of select="."/>
                    <br/>
                </xsl:for-each> 
            </td>
        </tr>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>