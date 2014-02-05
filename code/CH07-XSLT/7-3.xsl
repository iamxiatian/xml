<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html><body>
            <xsl:apply-templates select="books/book"/>  
        </body></html>
        
    </xsl:template>
    <xsl:template match="book">
        <xsl:if test="price &lt; 50">
            <p><xsl:value-of select="title"/></p>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>