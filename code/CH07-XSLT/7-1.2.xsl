<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:template match="/">
        <v2:order xmlns:v2="http://www.test.com/v2">
            <xsl:for-each select="//product">
                <product>
                    <xsl:attribute name="quantity"><xsl:value-of select="@quantity"/></xsl:attribute>
                    <name><xsl:value-of select="@name"/></name>
                    <price><xsl:value-of select="@price"/></price>
                </product>
            </xsl:for-each>
        </v2:order>
    </xsl:template>
</xsl:stylesheet>