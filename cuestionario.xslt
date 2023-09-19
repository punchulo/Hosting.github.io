<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:fn="http://www.w3.org/2005/xpath-functions"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:err="http://www.w3.org/2005/xqt-errors"
                exclude-result-prefixes="array fn map math xhtml xs err"
                version="3.0">

  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/" name="xsl:initial-template">
    <html>
      <head>
        <title>Cuestionario</title>
        <link rel="stylesheet" href="cuestionario.css"/>
      </head>
      <body>
        <nav>
          <div class="principal">
            <h1 class="titulo">CUESTIONARIO</h1>
          </div>
        </nav>
        <div class="div1">
          <form class="bloque">
            <xsl:for-each select="formulario/question">
              <div class="pregunta">
                <h3>
                  <xsl:value-of select="text"/>
                </h3>
                <div class="respuestas">
                  <label>
                    <input type="radio" name="respuesta_{position()}" value="1"/>
                    <xsl:value-of select="answer1"/>
                  </label>
                  <br/>
                  <label>
                    <input type="radio" name="respuesta_{position()}" value="2"/>
                    <xsl:value-of select="answer2"/>
                  </label>
                  <br/>
                  <label>
                    <input type="radio" name="respuesta_{position()}" value="3"/>
                    <xsl:value-of select="answer3"/>
                  </label>
                  <br/>
                </div>
              </div>
            </xsl:for-each>
            <br/>
            <input class="button" type="submit" value="enviar"/> 
          </form>
        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
