<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html><body>
            <xsl:apply-templates select="books"/>  
        </body></html>
    </xsl:template>
    <xsl:template match="books">
        <xsl:for-each select="book">
            <p><xsl:value-of select="title"/></p>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>