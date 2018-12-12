<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="duanct-1">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-lg-8 order-lg-1 order-2">
						<div class="slider-wrapper">
							<div class="project-detail-slider">
								<xsl:if test="count(/NewsDetail/NewsImages)>1">
									<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Slider">
									</xsl:apply-templates>
								</xsl:if>
							</div>
							<div class="project-detail-thumbnails">
								<xsl:if test="count(/NewsDetail/NewsImages)>1">
									<xsl:apply-templates select="/NewsDetail/NewsImages" mode="Thumbnail">
									</xsl:apply-templates>
								</xsl:if>
							</div>
							<div class="slider-processing-bar">
								<div class="slider-processing-bar-thumb"></div>
							</div>
						</div>
						<div class="slider-counter">
							<p class="current-count">01</p>
							<p>/</p>
							<p class="total">15</p>
						</div>
					</div>
					<div class="col-lg-4 order-lg-2 order-1">
						<div class="projects-tagline-info-panel">
							<div class="tagline">
								<div class="title">
									<h1>
										<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
										<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
									</h1>
								</div>
							</div>
							<div class="info">
								<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="duanct-2">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="tagline">
							<div class="title">
								<h2>dự án khác</h2>
							</div>
						</div>
					</div>
				</div>
				<div class="projects">
					<div class="nth-row other-project-details">
						<xsl:if test="count(/NewsDetail/NewsOther) > 0">
							<!--Call News Child-->
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</xsl:if>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<!--Begin News Other Child-->
	<xsl:template match="NewsOther">
		<!--item-->
		<a class="nth-col project">
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
					<div class="block-title">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="overlay"></div>
				</figcaption>
			</figure>
		</a>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Slider">
		<xsl:if test="position() &gt; 1">
			<div class="item">
				<figure>
					<div class="box-zoom">
						<a>
							<xsl:attribute name="data-fancybox">
								<xsl:text>images</xsl:text>
							</xsl:attribute>
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
					</div>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Thumbnail">
		<xsl:if test="position() &gt; 1">
			<div class="thumbnail">
				<figure>
					<div class="box-zoom">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</figure>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>