<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html><body>
            <h2>图书平均价格信息</h2>
            <xsl:call-template name="priceTemplate"/>
        </body></html>
    </xsl:template>
    <xsl:template name="priceTemplate">
        平均价格：<xsl:value-of select="format-number(sum(/books/book/price) div count(/books/book/price), '0')"/>
    </xsl:template>
</xsl:stylesheet>
