<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>图书显示效果</title>
                <link href="book-xslt.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <table cellpadding="0" cellspacing="0">
                    <thead>
                        <tr>
                            <td>ISBN</td>
                            <td>图书名称</td>
                            <td>出版社</td>
                            <td>页码</td>
                            <td>作者</td>
                            <td>封面图片</td>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:apply-templates select="books/book"/>
                    </tbody>
                </table>
                <xsl:apply-templates select="books/provider"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="book">
        <tr>
            <td><xsl:value-of select="@isbn"/></td>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="press"/></td>
            <td><xsl:value-of select="pages"/>页</td>
            <td><xsl:value-of select="authors"/></td>
            <td>
                <img>
                <xsl:attribute name="src"><xsl:value-of select="cover"/></xsl:attribute>
                </img>
            </td>
        </tr>
        
    </xsl:template>
    
    <xsl:template match="provider">
        <p>
        提供者：<xsl:value-of select="."/>   
        </p>
    </xsl:template>
</xsl:stylesheet>