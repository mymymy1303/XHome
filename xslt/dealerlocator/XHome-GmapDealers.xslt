<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">

		<input type="hidden" id="hdnDealerLocatorSiteId">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SiteId"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdnDealerLocatorLanguageId">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/LanguageId"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdnDealerLocatorZoneGuid" value="">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/ZoneGuid"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectCountry">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectCountryText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectProvince">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectProvinceText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectDistrict">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectDistrictText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorSelectZone">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/SelectZoneText"></xsl:value-of>
		</xsl:attribute>
		</input>
		<input type="hidden" id="hdfDealerLocatorCulture">
		<xsl:attribute name="value">
			<xsl:value-of select="/DealerList/Culture"></xsl:value-of>
		</xsl:attribute>
		</input>
		<div class="row">
			<div class="col distribution-wrapper">
				<div class="distribution">
					<div class="distribution-finder">
						<div class="distribution-title">
							<h2>HỆ THỐNG XHOME</h2>
						</div>
						<div class="distribution-description">
							<p>Chọn khu vực bạn muốn bắt đầu</p>
						</div>
					</div>
					<ul class="distribution-chooser">
						<li class="active">
							<h3>đà nẵng</h3>
							<p>Địa chỉ: Số 514 - Hoàng Diệu - Q Hải châu - TP Đà Nẵng</p>
							<p>Điện thoại: 0236 656 3939</p>
						</li>
						<li>
							<h3>đà nẵng</h3>
							<p>Địa chỉ: Số 514 - Hoàng Diệu - Q Hải châu - TP Đà Nẵng</p>
							<p>Điện thoại: 0236 656 3939</p>
						</li>
						<li>
							<h3>đà nẵng</h3>
							<p>Địa chỉ: Số 514 - Hoàng Diệu - Q Hải châu - TP Đà Nẵng</p>
							<p>Điện thoại: 0236 656 3939</p>
						</li>
						<li>
							<h3>đà nẵng</h3>
							<p>Địa chỉ: Số 514 - Hoàng Diệu - Q Hải châu - TP Đà Nẵng</p>
							<p>Điện thoại: 0236 656 3939</p>
						</li>
					</ul>
				</div>
				<a class="distribution-sidemenu-toggle-button" href="javascript:void(0)">
					<i class="mdi mdi-magnify"></i>
					<span>Tìm kiếm chi nhánh</span>
				</a>
				<div class="map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2313.0442840571704!2d108.21803906833993!3d16.05042623176053!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219c6f47bfca3%3A0xb31ea2e8f156c6f5!2zNTE0IEhvw6BuZyBEaeG7h3UsIEjDsmEgVGh14bqtbiDEkMO0bmcsIFEuIEjhuqNpIENow6J1LCDEkMOgIE7hurVuZyA1NTAwMDAsIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1543173408222"
					 width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen=""></iframe>
				</div>
			</div>
		</div>
	</xsl:template>
	<!-- <xsl:template match="Center">
		<option>
			<xsl:attribute name="value">
				<xsl:value-of select="ID" />
			</xsl:attribute>
			<xsl:value-of select="Title" />
		</option>
	</xsl:template> -->
	<!-- <xsl:template match="Dealer" mode="load">
		<li class="">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>mapchooser-active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<h3>
				<xsl:value-of select="Phone" disable-output-escaping="yes"></xsl:value-of>
			</h3>
			<p>
				<xsl:value-of select="Address" disable-output-escaping="yes"></xsl:value-of>
			</p>
			<p>
				<xsl:value-of select="Phone" disable-output-escaping="yes"></xsl:value-of>
			</p>
		</li>
	</xsl:template> -->
</xsl:stylesheet>