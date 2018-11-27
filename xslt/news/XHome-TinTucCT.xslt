<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="tintucct-1">
			<div class="container">
				<div class="row">
					<div class="col-12 col-lg-8 main-content">
						<div class="time">
							<p>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</p>
						</div>
						<div class="title">
							<h1>
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h1>
						</div>
						<div class="content">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="social">
							<xsl:value-of select="/NewsDetail/FacebookLike" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="/NewsDetail/PlusOne" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="/NewsDetail/TweetThis" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="col-12 col-lg-4">
						<div class="other-news">
							<xsl:if test="count(/NewsDetail/NewsOther) > 0">
								<!--Call News Child-->
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
							</xsl:if>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<!--Begin News Other Child-->
	<xsl:template match="NewsOther">
		<!--item-->
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
			<figure>
				<div class="box-zoom">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<figcaption>
					<div class="time">
						<p>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</p>
					</div>
					<div class="title">
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</div>
				</figcaption>
			</figure>
		</a>
	</xsl:template>
</xsl:stylesheet>