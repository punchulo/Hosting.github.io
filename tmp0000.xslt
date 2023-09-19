<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="cuestionario.xslt"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/" name="xsl:initial-template">
		<html>
			<head>
				<title>PORTAL DE TEST</title>
				<link rel="stylesheet" href="../css/cuestionario.css"/>
			</head>
			<body>
				<nav>
					<div class="principal">
						<a class="tipografia" href="./xml/cuestionario.xml">CUESTIONARIO</a>
					</div>
					<div class="principal">
						<a class="tipografia" href="#info">Informacion</a>
					</div>
					<div class="principal">
						<a class="tipografia" href="./xslt/cuestionarioxslt.xslt">cuestionario</a>
					</div>
				</nav>
				<div class="div1">
					<form>
						<xsl:for-each select="formulario/pregunta">
							<h3>
								<xsl:value-of select="titulo"/>
								<br/>
							</h3>
							<input type="radio" name="respuesta" value="1">
								<xsl:value-of select="opcion1"/>
								<br/>
							</input>
							<input type="radio" name="respuesta" value="2">
								<xsl:value-of select="opcion2"/>
								<br/>
							</input>
							<input type="radio" name="respuesta" value="3">
								<xsl:value-of select="opcion3"/>
								<br/>
							</input>
							<input type="radio" name="respuesta" value="4">
								<xsl:value-of select="opcion4"/>
							</input>
						</xsl:for-each>
						<input type="submit" value="enviar"/>
						<br/>
					</form>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
