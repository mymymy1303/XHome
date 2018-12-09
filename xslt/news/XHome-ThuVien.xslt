<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="thuvien-1">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tagline">
							<div class="title" data-aos="fade-up">
								<h1>
									<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
								</h1>
							</div>
						</div>
					</div>
				</div>
				<div class="row" data-aos="fade-up">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<xsl:choose>
			<xsl:when test="position() mod 10 = 1">
				<xsl:text disable-output-escaping="yes">&lt;div class=&quot;col-md-6&quot;&gt;&lt;div
					class=&quot;main-gallery&quot;&gt;</xsl:text>
				<figure class="gallery">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</figure>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:when>
			<xsl:when test="position() mod 10 = 2">
				<xsl:text disable-output-escaping="yes">&lt;div class=&quot;sub-gallery&quot;&gt;</xsl:text>
				<figure class="gallery">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</figure>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</xsl:when>
			<xsl:when test="position() mod 10 = 3">
				<figure class="gallery">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</figure>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
			</xsl:when>
			<xsl:when test="position() mod 10 = 4">
				<xsl:text disable-output-escaping="yes">&lt;div class=&quot;col-md-6 gallery-wrapper-reverse&quot;&gt;&lt;div
					class=&quot;main-gallery&quot;&gt;</xsl:text>
				<figure class="gallery">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</figure>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:when>
			<xsl:when test="position() mod 10 = 5">
				<xsl:text disable-output-escaping="yes">&lt;div class=&quot;sub-gallery&quot;&gt;</xsl:text>
				<figure class="gallery">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</figure>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</xsl:when>
			<xsl:when test="position() mod 10 = 6">
				<figure class="gallery">
					<xsl:if test="count(NewsImages)>1">
						<xsl:apply-templates select="NewsImages">
							<xsl:with-param name="position" select="position()"></xsl:with-param>
						</xsl:apply-templates>
					</xsl:if>
				</figure>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;</xsl:text>
			</xsl:when>
			<xsl:when test="position() mod 10 = 7">
				<xsl:text disable-output-escaping="yes">&lt;div class=&quot;row normal-gallery&quot;
					data-aos=&quot;fade-up&quot;&gt;</xsl:text>
				<div class="col-6 col-md-3">
					<figure class="gallery">
						<xsl:if test="count(NewsImages)>1">
							<xsl:apply-templates select="NewsImages">
								<xsl:with-param name="position" select="position()"></xsl:with-param>
							</xsl:apply-templates>
						</xsl:if>
					</figure>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</xsl:when>
			<xsl:when test="position() mod 10 = 8">
				<div class="col-6 col-md-3">
					<figure class="gallery">
						<xsl:if test="count(NewsImages)>1">
							<xsl:apply-templates select="NewsImages">
								<xsl:with-param name="position" select="position()"></xsl:with-param>
							</xsl:apply-templates>
						</xsl:if>
					</figure>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</xsl:when>
			<xsl:when test="position() mod 10 = 9">
				<div class="col-6 col-md-3">
					<figure class="gallery">
						<xsl:if test="count(NewsImages)>1">
							<xsl:apply-templates select="NewsImages">
								<xsl:with-param name="position" select="position()"></xsl:with-param>
							</xsl:apply-templates>
						</xsl:if>
					</figure>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</xsl:when>
			<xsl:when test="position() mod 10 = 0">
				<div class="col-6 col-md-3">
					<figure class="gallery">
						<xsl:if test="count(NewsImages)>1">
							<xsl:apply-templates select="NewsImages">
								<xsl:with-param name="position" select="position()"></xsl:with-param>
							</xsl:apply-templates>
						</xsl:if>
					</figure>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="NewsImages">
		<xsl:param name="position"></xsl:param>
		<xsl:if test="position() &gt;= 1">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>