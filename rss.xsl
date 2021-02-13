<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- This causes the HTML doctype (<!doctype hmlt>) to be rendered. -->
	<xsl:output method="html" doctype-system="about:legacy-compat" indent="yes" />

	<!-- Start matching at the Channel node within the XML RSS feed. -->
	<xsl:template match="/rss/channel">

		<html>
		<head>
			<title> <xsl:value-of select="title" /> </title>
            <link rel="stylesheet" type="text/css" href="https://unpkg.com/sakura.css/css/sakura.css"/>
		</head>

		<body>

			<h1> <xsl:value-of select="title" /> </h1>

            <xsl:for-each select="./item">

                <h2> <xsl:value-of select="pubDate"/> </h2>

                <a href="{ link }"> <xsl:value-of select="title" /> </a>

            </xsl:for-each>


		</body>
		</html>

	</xsl:template>

</xsl:stylesheet>
