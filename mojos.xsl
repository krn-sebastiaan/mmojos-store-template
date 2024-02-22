<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<html>
			<head>
				<title>Mojos</title>
				<link rel="stylesheet" href="mojos.css"/>
				<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato" />
			</head>
			<body>
				<div class="mojosCaption">Mojos</div>
				<table class="mojoList">
					<tr class="mojoListCaption">
						<td class="mojoListCaptionElement">Name</td>	
						<td class="mojoListCaptionElement">Version</td>
					</tr>
					<xsl:for-each select="registry/mojo">
						<xsl:sort select="name"/>
						<tr class="mojoListRow">
							<xsl:attribute name="id">
								<xsl:value-of select="name/text()"/>
							</xsl:attribute>
							<td class="mojoListRowElement">
								<a class="mojoRef">
									<xsl:attribute name="href">
										<xsl:value-of select="file/text()"/>
									</xsl:attribute>
									<xsl:value-of select="name/text()"/>-<xsl:value-of select="version/text()"/>.jar
								</a>
							</td>
							<td class="mojoListRowElement">
								<xsl:value-of select="version/text()"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
