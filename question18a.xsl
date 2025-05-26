<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/students">
    <students>
      <xsl:apply-templates select="student"/>
    </students>
  </xsl:template>

  <xsl:template match="student">
    <student>
      <xsl:attribute name="reg_no">
        <xsl:value-of select="reg_no"/>
      </xsl:attribute>

      <name><xsl:value-of select="name"/></name>
      <symbol_number><xsl:value-of select="symbol_number"/></symbol_number>

      <marks>
        <xsl:for-each select="marks/*">
          <subject>
            <xsl:attribute name="name">
              <xsl:value-of select="name()"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
          </subject>
        </xsl:for-each>
      </marks>

      <xsl:variable name="total" select="sum(marks/*)"/>
      <total_marks><xsl:value-of select="$total"/></total_marks>
      <percentage>
        <xsl:value-of select="format-number($total div 5, '0')"/>
      </percentage>
    </student>
  </xsl:template>

</xsl:stylesheet>
