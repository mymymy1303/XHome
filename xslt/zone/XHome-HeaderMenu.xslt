<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<div class="custom-nav">
				<xsl:apply-templates select="/ZoneList/Zone" mode="Zone1"></xsl:apply-templates>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone1">
		<div class="custom-nav-item">
			<xsl:if test="count(Zone) > 0">
				<xsl:attribute name="class">
					<xsl:text>custom-nav-item has-child</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>

			<xsl:if test="count(Zone) > 0">
				<div class="sub-link">
					<xsl:apply-templates select="Zone" mode="Zone2"></xsl:apply-templates>
				</div>
			</xsl:if>
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Zone2">
		<a>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</a>
	</xsl:template>
</xsl:stylesheet>