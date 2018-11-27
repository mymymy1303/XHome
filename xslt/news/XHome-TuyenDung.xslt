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
				<section class="tuyendung-1">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="tagline">
									<div class="title">
										<h1>
											<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
										</h1>
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
				<section class="tuyendung-2">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="tagline">
									<div class="title">
										<h2>
											<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
										</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="collapse-desktop-wrapper">
							<div class="collapse-wrapper">
								<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
							</div>
						</div>
						<div class="collapse-mobile-wrapper"></div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews1">
		<div class="col-md-6">
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
			</figure>
		</div>
		<div class="col-md-6">
			<div class="content">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<div class="contact">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>


	<xsl:template match="News" mode="ZoneNews2">
		<xsl:choose>
			<xsl:when test="position()=1">
				<div class="collapse-title">
					<p class="career">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p class="number">
						<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p class="place">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p class="time">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</xsl:when>
			<xsl:otherwise>
				<div class="collapse">
					<div class="collapse-heading">
						<p class="career">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
								<span class="new">Mới</span>
							</xsl:if>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<p class="number">
							<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<p class="place">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<p class="time">
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</p>
						<div class="mdi mdi-dots-horizontal"></div>
					</div>
					<div class="collapse-content">
						<a class="collapse-content-toggle-button" href="javascript:void(0)"><i class="mdi mdi-close"></i></a>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>