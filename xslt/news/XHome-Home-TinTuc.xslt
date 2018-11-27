<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<xsl:if test="count(/NewsList/News) > 0">
			<!--Call News Child-->
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<xsl:choose>
			<xsl:when test="position() mod 3 = 1">
				<xsl:text disable-output-escaping="yes">&lt;div class=&quot;row news&quot;&gt;&lt;div class=&quot;col-lg-8
					main-news&quot; data-aos=&quot;fade-right&quot;&gt;</xsl:text>
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
							<div class="description">
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</figcaption>
					</figure>
				</a>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</xsl:when>
			<xsl:when test="position() mod 3 = 2">
				<xsl:text disable-output-escaping="yes">&lt;div class=&quot;col-lg-4 sub-news&quot;
					data-aos=&quot;fade-left&quot;&gt;</xsl:text>
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
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</xsl:when>
			<xsl:when test="position() mod 3 = 0">
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
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>