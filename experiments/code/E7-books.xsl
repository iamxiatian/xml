<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8"/>
                <title>图书列表</title>
                <link type="text/css"  rel="stylesheet" href="E7-books.css"/>
            </head>
            <body>
                <table>
                    <xsl:apply-templates select="books/book"/>
                </table>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="book">
        <tr>
            <td>
                <img class="cover">
                    <xsl:attribute name="src">
                        <xsl:value-of select="cover"/>
                    </xsl:attribute>
                </img>
            </td>
            <td>
                <ul>
                    <li class="title"><xsl:value-of select="title"/></li>
                    <li>ISBN:<xsl:value-of select="@isbn"/></li>
                    <li>作者:<xsl:value-of select="authors"/></li>
                    <li>出版社:<xsl:value-of select="press"/></li>
                    <li>价格:
                        <xsl:choose>
                            <xsl:when test="price &gt; 40">
                                <span class="highPrice">
                                    <xsl:value-of select="price"/>
                                </span>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="price"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </li>
                    <li><xsl:value-of select="description"/></li>
                </ul>
            </td>            
        </tr>
    </xsl:template>
</xsl:stylesheet>