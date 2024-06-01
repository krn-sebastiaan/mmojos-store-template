<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<html>
			<head>
				<title>mMojo's</title>
				<link rel="stylesheet" href="mmojos.css"/>
				<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato" />
			</head>
			<body>
				<div class="mMojosCaption">mMojo's</div>
				<table class="mMojoList">
					<tr class="mMojoListCaption">
						<td class="mMojoListCaptionElement">Name</td>	
						<td class="mMojoListCaptionElement">Version</td>
					</tr>
					<xsl:for-each select="registry/mmojo">
						<xsl:sort select="name"/>
						<tr class="mMojoListRow">
							<xsl:attribute name="id">
								<xsl:value-of select="name/text()"/>
							</xsl:attribute>
							<td class="mMojoListRowElement">
								<a class="mMojoRef">
									<xsl:if test="file">
										<xsl:attribute name="href">
											<xsl:value-of select="file/text()"/>
										</xsl:attribute>
									</xsl:if>
									<xsl:if test="url">
										<xsl:attribute name="href">
											<xsl:value-of select="url/text()"/>
										</xsl:attribute>
									</xsl:if>
									<xsl:value-of select="name/text()"/>-<xsl:value-of select="version/text()"/>.jar
								</a>
							</td>
							<td class="mMojoListRowElement">
								<xsl:value-of select="version/text()"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
