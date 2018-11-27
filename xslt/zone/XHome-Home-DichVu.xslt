<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone" mode="Service"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone" mode="Service">
		<section class="home-1">
			<div class="container">
				<div class="services">
					<xsl:apply-templates select="Zone" mode="Service2"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="Zone" mode="Service2">
		<div class="service" data-aos="fade-down-right">
			<xsl:choose>
				<xsl:when test="position() mod 3 = 1">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down-right</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 3 = 2">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 3 = 0">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down-left</xsl:text>
					</xsl:attribute>
				</xsl:when>
			</xsl:choose>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="box-zoom">
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
					</div>
					<figcaption>
						<div class="title">
							<h2>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
						<div class="overlay"></div>
					</figcaption>
					<div class="hidden">
						<div class="title">
							<h2>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
						<div class="description">
							<p>
								<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</div>
					</div>
					<div class="background-hidden"></div>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>