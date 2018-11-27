<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<div class="row">
			<xsl:if test="count(/NewsList/News) > 0">
				<!--Call News Child-->
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</xsl:if>
		</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class="col-12 col-sm-6 col-lg-3 block" data-aos="fade-up">
			<figure>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</figcaption>
			</figure>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>