<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
    <html> 
    <body> 
    <h1>Mi biblioteca personal</h1> 

        <table> 
        <tr bgcolor="#662288">
            <th>isbn</th>
            <th>titulo</th> 
            <th>autor</th>
            <th>editor</th>
            <th>precio</th>
            <th>numPaginas</th>
        </tr> 
    <xsl:for-each select="libreria/libro">
    <tr>
    <xsl:choose>
        <xsl:when test="numPaginas &gt; 150">
            <td bgcolor="#ff2d00">
            <xsl:value-of select="isbn"/>
            </td>
            <td bgcolor="#ff2d00">
            <xsl:value-of select="titulo"/>
            </td>
            <td bgcolor="#ff2d00">
            <xsl:value-of select="autor"/>
            </td>
            <td bgcolor="#ff2d00">
            <xsl:value-of select="editor"/>
            </td>
            <td bgcolor="#ff2d00">
            <xsl:value-of select="precio"/>
            </td>
            <td bgcolor="#ff2d00">
            <xsl:value-of select="numPaginas"/>
            </td>
        </xsl:when>
        <xsl:otherwise>
            <td bgcolor="#0000ff">
            <xsl:value-of select="isbn"/>
            </td>
            <td bgcolor="#0000ff">
            <xsl:value-of select="titulo"/>
            </td>
            <td bgcolor="#0000ff">
            <xsl:value-of select="autor"/>
            </td>
            <td bgcolor="#0000ff">
            <xsl:value-of select="editor"/>
            </td>
            <td bgcolor="#0000ff">
            <xsl:value-of select="precio"/>
            </td>
            <td bgcolor="#0000ff">
            <xsl:value-of select="numPaginas"/>
            </td>
        </xsl:otherwise>
    </xsl:choose>
    </tr>
    </xsl:for-each> 
    </table> 
    </body> 
    </html>
</xsl:template>
</xsl:stylesheet> 