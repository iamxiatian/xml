<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    
    <xsl:template match="/">
        <html>
            <head><title>图书列表</title></head>
            <body>
                <xsl:apply-templates/> 
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="books">
        <table>
            <xsl:apply-templates select="book"/>
        </table>
    </xsl:template>
    
    <xsl:template match="book">
        <tr>
            <td><xsl:value-of select="title"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>