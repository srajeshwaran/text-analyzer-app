<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Sitemap - Text Analyzer App</title>
        <style>
          body { font-family: Arial, sans-serif; background: #f9f9f9; color: #333; }
          h1 { color: #6366f1; }
          ul { list-style: none; padding: 0; }
          li { margin: 10px 0; padding: 10px; background: #fff; border-left: 4px solid #6366f1; box-shadow: 0 2px 4px rgba(0,0,0,0.1);}
          .meta { font-size: 0.9em; color: #666; }
        </style>
      </head>
      <body>
        <h1>Sitemap - Text Analyzer App</h1>
        <ul>
          <xsl:for-each select="urlset/url">
            <li>
              <a href="{loc}"><xsl:value-of select="loc"/></a>
              <div class="meta">
                Last modified: <xsl:value-of select="lastmod"/> | 
                Change frequency: <xsl:value-of select="changefreq"/> | 
                Priority: <xsl:value-of select="priority"/>
              </div>
            </li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
