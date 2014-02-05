<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html><body>
            <h2>图书列表</h2>
            <xsl:apply-templates select="books" mode="detail"/> 
            提供者:<xsl:value-of select="/books/provider"/>
        </body></html>
    </xsl:template>
    
    <xsl:template match="books" mode="detail">
        <table>
            <tr>
                <td>ISBN</td>
                <td>标题</td>
                <td>出版社</td>
                <td>价格</td>
            </tr>
            <xsl:for-each select="book">
                <xsl:sort select="pages" order="ascending"/>
                <tr>
                    <xsl:choose>
                        <xsl:when test="price &gt; 50">
                            <xsl:attribute name="style">color:red;</xsl:attribute>
                        </xsl:when>
                        <xsl:when test="price &gt; 30">
                            <xsl:attribute name="style">color:blue;</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="style">color:navy;</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                    <td><xsl:value-of select="@isbn"/></td>
                    <td><xsl:value-of select="title"/></td> 
                    <td><xsl:value-of select="press"/></td>
                    <td><xsl:value-of select="format-number(price, '0.00')"/></td>   
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>