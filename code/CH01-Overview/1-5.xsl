<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>����ͼ��ĳ�����ʽ���</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>���� </th>
                        <th>���� </th>
                        <th>������ </th>
                        <th>�۸� </th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="books/book/title"/></td>
                        <td><xsl:value-of select="books/book/author"/></td>
                        <td><xsl:value-of select="books/book/publisher"/></td>
                        <td><xsl:value-of select="books/book/price"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
