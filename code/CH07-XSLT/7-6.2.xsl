<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html><body>
            <xsl:apply-templates select="books/book">
                <xsl:sort select="price" order="descending"/>
            </xsl:apply-templates>  
        </body></html>
    </xsl:template>
    <xsl:template match="book">
        <p><xsl:value-of select="title"/></p>
    </xsl:template>
</xsl:stylesheet>