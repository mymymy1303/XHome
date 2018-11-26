<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<section class="duands-1">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="tagline">
								<div class="title">
									<h1>
										<xsl:value-of select="/ZoneList/Title" disable-output-escaping="yes"></xsl:value-of>
									</h1>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<ul>
								<xsl:apply-templates select="/ZoneList/Zone" mode="Project"></xsl:apply-templates>
							</ul>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode="Project">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>