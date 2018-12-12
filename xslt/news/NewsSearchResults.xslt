<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="count(/NewsList/News)>0">
				<div class="searchsummary clearfix">
					<xsl:value-of select="/NewsList/SearchSumary" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<section class="duands-2 searchresults">
					<div class="projects searchresultlist">
						<xsl:if test="count(/NewsList/News) > 0">
							<!--Call News Child-->
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</xsl:if>
					</div>
				</section>
			</xsl:when>
			<xsl:otherwise>
				<div class="noresults">
					<xsl:value-of select="/NewsList/NoResults" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News">
		<xsl:if test="position() mod 3 = 1">
			<xsl:text disable-output-escaping="yes">&lt;div class=&quot;nth-row&quot;&gt;</xsl:text>
		</xsl:if>
		<a class="nth-col project searchresult">
			<xsl:choose>
				<xsl:when test="position() mod 9 = 1">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down-right</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 9 = 2">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 9 = 3">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down-left</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 9 = 4">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-right</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 9 = 5">
					<xsl:attribute name="data-aos">
						<xsl:text>zoom-out</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 9 = 6">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-left</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 9 = 7">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-up-right</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 9 = 8">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-up</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position() mod 9 = 0 ">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-up-left</xsl:text>
					</xsl:attribute>
				</xsl:when>
			</xsl:choose>
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
					<div class="block-title">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="overlay"></div>
				</figcaption>
			</figure>
		</a>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
		<xsl:if test="position() mod 3 = 0">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>