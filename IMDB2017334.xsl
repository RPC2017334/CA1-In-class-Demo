<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
                <table id="menuTable" class="indent">
                    <thead>
                        <tr>
                            <th colspan="5">IMDB Top 20</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>title</th>
                            <th>year</th>
                            <th>gender</th>
                            <th>director</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/IMDB/section">
                            <tr>
                                <td colspan="2">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="movie" >
                            <tr id="{position()}">
                                <td align="center">
                                    <input name="item0" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="title" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="year" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="genres" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="director" />
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>