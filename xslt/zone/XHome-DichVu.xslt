<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<section class="dichvuds-1">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="tagline">
								<div class="title" data-aos="fade-up">
									<h1>
										<xsl:value-of select="/ZoneList/Title" disable-output-escaping="yes"></xsl:value-of>
									</h1>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="services">
								<xsl:apply-templates select="/ZoneList/Zone" mode="Service"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode="Service">
		<figure>
			<div class="box-zoom" data-aos="fade-right">
				<xsl:choose>
					<xsl:when test="position() mod 2 = 1">
						<xsl:attribute name="data-aos">
							<xsl:text>fade-right</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="position() mod 2 = 0">
						<xsl:attribute name="data-aos">
							<xsl:text>fade-left</xsl:text>
						</xsl:attribute>
					</xsl:when>
				</xsl:choose>
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
				<xsl:choose>
					<xsl:when test="position() mod 2 = 1">
						<xsl:attribute name="data-aos">
							<xsl:text>fade-left</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="position() mod 2 = 0">
						<xsl:attribute name="data-aos">
							<xsl:text>fade-right</xsl:text>
						</xsl:attribute>
					</xsl:when>
				</xsl:choose>
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
				<div class="viewmore-wrapper">
					<a class="nth-viewmore">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						Xem chi tiết
					</a>
				</div>
			</figcaption>
		</figure>
	</xsl:template>
</xsl:stylesheet>