<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="dichvuct-1">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tagline">
							<div class="title">
								<h1>
									<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
								</h1>
							</div>
							<div class="description">
								<p>
									<xsl:value-of select="/NewsList/ZoneDescription" disable-output-escaping="yes"></xsl:value-of>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="dichvuct-2">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tabs-wrapper">
							<div class="tab-headers-wrapper">
								<div class="tab-headers-mapping"></div>
							</div>
							<div class="tab-contents-wrapper">
								<div class="tab-contents-mapping"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tabs">
				<xsl:if test="count(/NewsList/News) > 0">
					<article class="list-items">
						<!--Call News Child-->
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</article>
				</xsl:if>
			</div>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<a class="tab-header" href="javascript:void(0)" data-tab-id="1">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>tab-header active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="data-tab-id">
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="icon">
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
			<div class="content">
				<div class="counter">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="title">
					<h2>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
			</div>
		</a>
		<div class="tab-content">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>tab-content active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="data-tab">
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<a>
				<xsl:attribute name="data-fancybox">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
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
			</a>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>