<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<!--Begin News-->
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="gioithieu-1">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="tagline">
									<div class="title" data-aos="fade-up">
										<h2>
											<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
										</h2>
									</div>

									<div class="description" data-aos="fade-up">
										<p>
											<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
										</p>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="gioithieu-2">
					<div class="bg-desktop" bg-img="/Data/Sites/1/skins/default/img/gioithieu/bg-1.png">
					</div>
					<div class="bg-mobile" bg-img="/Data/Sites/1/skins/default/img/gioithieu/bg-2.png">
					</div>
					<div class="container">
						<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
					</div>
				</section>
			</xsl:when>

			<xsl:when test="position()=3">
				<section class="gioithieu-3" bg-img="/Data/Sites/1/skins/default/img/global/black-dotted-bg.png">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="tagline">
									<div class="title" data-aos="fade-down">
										<h2>
											<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
										</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="row blocks">
							<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>

			<xsl:when test="position()=4">
				<section class="gioithieu-4" bg-img="/Data/Sites/1/skins/default/img/gioithieu/bg-2.png">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="tagline">
									<div class="title" data-aos="fade-up">
										<h2>
											<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
										</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<div class="slider-wrapper" data-aos="fade-up">
									<div class="about-slider">
										<xsl:apply-templates select="News" mode="ZoneNews4"></xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews1">
		<div class="col-12 col-sm-6 col-lg-3 block" data-aos="fade-up">
			<figure>
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
				<figcaption>
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</figcaption>
			</figure>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>


	<xsl:template match="News" mode="ZoneNews2">
		<div class="row">
			<div class="col">
				<div class="video" data-aos="fade-up">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="BriefContent"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="data-fancybox">
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
							<div class="overlay">
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
						</figure>
					</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<div class="price">
					<div class="title" data-aos="fade-up">
						<h2>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="content">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews3">
		<div class="col-md-4 block-wrapper">
			<xsl:choose>
				<xsl:when test="position()=1">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down-right</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position()=2">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down</xsl:text>
					</xsl:attribute>
				</xsl:when>
				<xsl:when test="position()=3">
					<xsl:attribute name="data-aos">
						<xsl:text>fade-down-left</xsl:text>
					</xsl:attribute>
				</xsl:when>
			</xsl:choose>
			<div class="block">
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
						<div class="block-skew">
							<img>
							<xsl:attribute name="src">
								<xsl:text>/Data/Sites/1/skins/default/img/gioithieu/block-skew.png</xsl:text>
							</xsl:attribute>
							</img>
						</div>
					</div>
					<figcaption>
						<div class="title">
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</div>
						<div class="description">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews4">
		<div class="item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="BriefContent"></xsl:value-of>
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
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</div>
						<div class="description">
							<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>