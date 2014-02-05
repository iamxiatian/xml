<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="/">
        <html><body>
            <h2>按照价格降序排列的图书名称</h2>
            <xsl:apply-templates select="books" mode="simple"/>  
            <h2>图书详细列表</h2>
            <xsl:apply-templates select="books" mode="detail"/> 
        </body></html>
    </xsl:template>
    <xsl:template match="books" mode="simple">
        <ul>
        <xsl:for-each select="book">
            <xsl:sort select="price" order="descending"/>
            <li><xsl:value-of select="title"/></li>
        </xsl:for-each>
        </ul>
    </xsl:template>
    
    <xsl:template match="books" mode="detail">
        <table>
            <tr>
                <td>ISBN</td>
                <td>标题</td>
                <td>作者</td>
                <td>出版社</td>
                <td>价格</td>
            </tr>
            <xsl:for-each select="book">
                <xsl:sort select="pages" order="ascending"/>
                <tr>
                    <td><xsl:value-of select="@isbn"/></td>
                    <td><xsl:value-of select="title"/></td> 
                    <td><xsl:value-of select="authors"/></td>
                    <td><xsl:value-of select="press"/></td>
                    <td><xsl:value-of select="price"/></td>   
                    <td><img height="120">
                        <xsl:attribute name="src"><xsl:value-of select="cover"/></xsl:attribute>
                        <xsl:attribute name="width">80</xsl:attribute>

                    </img></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
</xsl:stylesheet>