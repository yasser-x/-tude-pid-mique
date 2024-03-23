<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <style type="text/css">
          body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            background-image: url('Rabies.jpeg');
            margin: 0;
            padding: 0;
          }
      
          h1 {
              background-color: #333;
              color: #fff;
              padding: 10px;
              text-align: center;
          }
      
          .virus {
            background-color: #fff; /* Change this to the desired light blue shade */
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width:800px;
            border-radius :40px;}
      
          h2 {
              font-size: 24px;
              color: #333;
              margin-top: 0;
          }
      
          p {
              margin: 10px 0;
          }
      
          strong {
              color: #333;
          }
        </style>
        
      </head>
      <body>
        <h1>Healthcare Virus </h1>
        <xsl:apply-templates select="viruses/virus"/>
        <xsl:apply-templates select="viruses/virus"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="virus">
    <div class="virus">
      <h2><xsl:value-of select="name"/></h2>
      <p><strong>Discovery Date:</strong> <xsl:value-of select="discoveryDate"/></p>
      <p><strong>Characteristics:</strong> <xsl:value-of select="characteristics"/></p>
      <p><strong>Symptoms:</strong> <xsl:value-of select="symptoms"/></p>
      <p><strong>Prevention:</strong> <xsl:value-of select="prevention"/></p>
      <p><strong>History:</strong> <xsl:value-of select="history"/></p>
    </div>
  </xsl:template>
</xsl:stylesheet>