<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <body>
    <h1>Duracion de menos de 2 minuto</h1>
        <table border="1">
        <tr bgcolor="#009999">
            <th>TituloDelAlbum</th>
            <th>Artista</th>
            <th>SelloDiscografico</th>
            <th>AnnoPublicacion</th>
            <th>TituloCancion</th>
            <th>Duracion</th>
        </tr>
        <xsl:for-each select="Discografica/CD">
        <!-- Definir Variables -->
        <xsl:variable name="TituloDelAlbum"><xsl:value-of select="TituloDelAlbum"/></xsl:variable>
        <xsl:variable name="Artista"><xsl:value-of select="Artista"/></xsl:variable>
        <xsl:variable name="SelloDiscografico"><xsl:value-of select="SelloDiscografico"/></xsl:variable>
        <xsl:variable name="AnnoPublicacion"><xsl:value-of select="AnnoPublicacion"/></xsl:variable>
        <xsl:for-each select="TituloCancion">
        <xsl:if test="@tiempo &lt; 300">
        <tr>
            <!-- Uso de Variables -->
            <td><xsl:value-of select="$TituloDelAlbum"/></td>
            <td><xsl:value-of select="$Artista"/></td>
            <td><xsl:value-of select="$SelloDiscografico"/></td>
            <td><xsl:value-of select="$AnnoPublicacion"/></td>
            <td><xsl:value-of select="."/><br/></td>
            <!-- Acceso de los atributos -->
            <td><xsl:value-of select="@tiempo"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>