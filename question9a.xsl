<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <head>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
          }
          h1 {
            background-color: green;
            color: white;
            text-align: center;
            padding: 15px;
            font-size: 24px;
          }
          table {
            width: 100%;
            border-collapse: collapse;
          }
          td {
            border: 1px solid #ccc;
            padding: 15px;
            vertical-align: top;
            background-color: white;
            text-align: center;
          }
          .section-title {
            font-size: 18px;
            font-weight: bold;
            color: green;
            margin-bottom: 10px;
          }
          ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
          }
          li {
            font-size: 14px;
            margin: 5px 0;
          }

          /* Add colorful styles to each section by index */
          tr:nth-child(2) li { color: #006400; } /* Algo */
          tr:nth-child(3) li { color: #000080; } /* Data Structures */
          tr:nth-child(4) li { color: #1E90FF; } /* Web Tech */
          tr:nth-child(5) li { color: #A52A2A; } /* Languages */
          tr:nth-child(6) li { color: orange; }  /* DBMS */

          tr:nth-child(n+2) .section-title { color: #006400; }

        </style>
      </head>
      <body>
        <h1>
          <xsl:value-of select="content/header" />
        </h1>
        <table>
          <xsl:for-each select="content/section">
            <tr>
              <td>
                <div class="section-title">
                  <xsl:value-of select="@name"/>
                </div>
                <ul>
                  <xsl:for-each select="item">
                    <li><xsl:value-of select="."/></li>
                  </xsl:for-each>
                </ul>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
