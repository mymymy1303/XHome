const theHuyApp = {
	currentScrollY: 0,
	projectDetailSlider: "",
	ready: (fn) => {
		if (document.attachEvent ? document.readyState === "complete" : document.readyState !== "loading") {
			fn();
		} else {
			document.addEventListener('DOMContentLoaded', fn);
		}
	},
	select: (s) => {
		return document.querySelector(s);
	},
	selectAll: (s) => {
		return document.querySelectorAll(s);
	},
	avoidNull: (f) => {
		try {
			f()
		} catch (error) { }
	},
	addClass: (el, className) => {
		if (el.classList)
			el.classList.add(className);
		else
			el.className += ' ' + className;
	},
	removeClass: (el, className) => {
		if (el.classList)
			el.classList.remove(className);
		else
			el.className = el.className.replace(new RegExp('(^|\\b)' + className.split(' ').join('|') + '(\\b|$)', 'gi'), ' ');
	},
	toggle: (el, className) => {
		let s = theHuyApp.select(el);
		if (s.classList) {
			s.classList.toggle(className);
		} else {
			let classes = s.className.split(' ');
			let i = classes.indexOf(className);

			if (i >= 0)
				classes.splice(i, 1);
			else
				classes.push(className);

			s.className = classes.join(' ');
		}
	},
	active: (el, a, o = false) => {
		if (o) {

		} else {
			theHuyApp.toggle(el, a);
		}
	},
	each: (s, f) => {
		let es = theHuyApp.selectAll(s);
		Array.prototype.forEach.call(es, f);
	},
	backToTop: () => {
		window.scrollTo({
			behavior: 'smooth',
			left: 0,
			top: 0
		});
	},
	smoothWheel: (target, speed, smooth) => {
		if (target == document)
			target = (document.documentElement || document.body.parentNode || document.body) // cross browser support for document scrolling
		var moving = false
		var pos = target.scrollTop
		target.addEventListener('mousewheel', scrolled, false)
		target.addEventListener('DOMMouseScroll', scrolled, false)

		function scrolled(e) {
			e.preventDefault(); // disable default scrolling

			var delta = normalizeWheelDelta(e)

			pos += -delta * speed
			pos = Math.max(0, Math.min(pos, target.scrollHeight - target.clientHeight)) // limit scrolling

			if (!moving) update()
		}

		function normalizeWheelDelta(e) {
			if (e.detail) {
				if (e.wheelDelta)
					return e.wheelDelta / e.detail / 40 * (e.detail > 0 ? 1 : -1) // Opera
				else
					return -e.detail / 3 // Firefox
			} else
				return e.wheelDelta / 120 // IE,Safari,Chrome
		}

		function update() {
			moving = true
			var delta = (pos - target.scrollTop) / smooth
			target.scrollTop += delta
			if (Math.abs(delta) > 0.5)
				requestFrame(update)
			else
				moving = false
		}

		var requestFrame = function () { // requestAnimationFrame cross browser
			return (
				window.requestAnimationFrame ||
				window.webkitRequestAnimationFrame ||
				window.mozRequestAnimationFrame ||
				window.oRequestAnimationFrame ||
				window.msRequestAnimationFrame ||
				function (func) {
					window.setTimeout(func, 1000 / 50);
				}
			);
		}()
	}
}

theHuyApp.ready(() => {
	/////////////-----------GLOBAL------------///////////////

	//Initialize AOS plugin
	theHuyApp.avoidNull(aosInit);
	theHuyApp.avoidNull(aosRefreshAfterLoad);

	//Back to top button
	theHuyApp.avoidNull(clickBackToTop);

	//Set breadcrumb home icon
	theHuyApp.avoidNull(setBreadcrumbHomeIcon);

	/////////////-----------END OF GLOBAL------------///////////////


	/////////////-----------HEADER------------///////////////

	//Header mapping
	theHuyApp.avoidNull(toolsMapping);
	theHuyApp.avoidNull(customNavMapping);
	theHuyApp.avoidNull(searchBoxMapping);

	//Toggle searchbox
	theHuyApp.avoidNull(desktop_searchToggle);
	theHuyApp.avoidNull(mobile_headerSidemenuToggle);

	//Header collapse on scroll listener
	theHuyApp.avoidNull(collapseHeaderListener);

	/////////////-----------END OF HEADER------------///////////////


	/////////////-----------FOOTER------------///////////////

	//Footer mapping
	theHuyApp.avoidNull(footerNavAndInfoSwitch);

	/////////////-----------END OF FOOTER------------///////////////


	/////////////-----------BANNER------------///////////////

	//Home Banner Slider
	theHuyApp.avoidNull(homeBannerInit);

	//Other pages banner
	theHuyApp.avoidNull(normalBannerInit);

	/////////////-----------END OF BANNER------------///////////////


	/////////////-----------ABOUT------------///////////////

	//About slider intitialize
	theHuyApp.avoidNull(aboutSliderInit);

	/////////////-----------END OF ABOUT------------///////////////


	/////////////-----------SERVICE DETAIL------------///////////////

	//Map tab headers
	theHuyApp.avoidNull(tabHeadersMapping);

	//Map tab contents
	theHuyApp.avoidNull(tabContentsMapping);

	//Set tab contents max height
	theHuyApp.avoidNull(setTabWrapperMaxHeight);
	theHuyApp.avoidNull(setTabWrapperMaxHeightListener);

	//Add toggle handler on tab
	theHuyApp.avoidNull(tabToggle);

	/////////////-----------END OF SERVICE DETAIL------------///////////////


	/////////////-----------PROJECTS------------///////////////

	//Hide pagination nav
	theHuyApp.avoidNull(hidePaginationNav);

	/////////////-----------END OF PROJECTS------------///////////////


	/////////////-----------PROJECT DETAIL------------///////////////

	theHuyApp.avoidNull(projectDetailSliderInit);
	theHuyApp.avoidNull(sliderCounterMapping);
	theHuyApp.avoidNull(setSliderCounterTotal);
	theHuyApp.avoidNull(setSliderCounterCurrentIndex);
	theHuyApp.avoidNull(projectDetailOthersSliderInit);
	theHuyApp.avoidNull(projectDetailsOtherSliderMapping);

	/////////////-----------END OF PROJECT DETAIL------------///////////////


	/////////////-----------GALLERY------------///////////////

	theHuyApp.avoidNull(galleryInit);

	/////////////-----------END OF GALLERY------------///////////////


	/////////////-----------DISTRIBUTION------------///////////////

	theHuyApp.avoidNull(distributionSidemenuMapping);
	theHuyApp.avoidNull(toggleDistributionSidemenu);

	/////////////-----------END OF DISTRIBUTION------------///////////////

	/////////////-----------CAREER------------///////////////

	theHuyApp.avoidNull(desktopCareerCollapsible);
	theHuyApp.avoidNull(careerMobileMapping);

	/////////////-----------END OF CAREER------------///////////////

});

/////////////-----------FUNCTIONS------------///////////////

/////////////-----------GLOBAL------------///////////////

const aosInit = () => {
	AOS.init();
}

const aosRefreshAfterLoad = () => {
	window.addEventListener('load', function () {
		AOS.refresh();
	});
}

const clickBackToTop = () => {
	theHuyApp.select('.backtotop').onclick = () => {
		theHuyApp.backToTop()
	}
}

/////////////-----------END OF GLOBAL------------///////////////


/////////////-----------HEADER------------///////////////

const toolsMapping = () => {
	return new MappingListener({
		selector: '.tools',
		mobileWrapper: '.sidemenu-header-mapping',
		mobileMethod: 'appendTo',
		desktopWrapper: '.header',
		desktopMethod: 'appendTo',
		breakpoint: 992
	}).watch();
}

const customNavMapping = () => {
	return new MappingListener({
		selector: '.custom-nav',
		mobileWrapper: '.sidemenu-header-mapping',
		mobileMethod: 'appendTo',
		desktopWrapper: '.desktop-nav',
		desktopMethod: 'prependTo',
		breakpoint: 992
	}).watch();
}

const searchBoxMapping = () => {
	return new MappingListener({
		selector: '.searchbox',
		mobileWrapper: '.sidemenu-header-mapping',
		mobileMethod: 'appendTo',
		desktopWrapper: '.desktop-search',
		desktopMethod: 'appendTo',
		breakpoint: 992
	}).watch();
}

const desktop_searchToggle = () => {
	theHuyApp.select('.search-toggle').onclick = () => {
		theHuyApp.active('.search-wrapper', 'active');
	}
}

const mobile_headerSidemenuToggle = () => {
	theHuyApp.select('.canhcam-header-1 .hamburger').onclick = () => {
		theHuyApp.active('.canhcam-header-1 .hamburger', 'is-active')
		theHuyApp.active('.sidemenu-header', 'active')
		theHuyApp.active('.header-backdrop', 'active')
	}

	theHuyApp.select('.header-backdrop').onclick = () => {
		theHuyApp.active('.canhcam-header-1 .hamburger', 'is-active')
		theHuyApp.active('.sidemenu-header', 'active')
		theHuyApp.active('.header-backdrop', 'active')
	}
}

const setBreadcrumbHomeIcon = () => {
	theHuyApp.select('.breadcrumb li a span').innerHTML = "<i class='mdi mdi-home'></i>"
}

const collapseHeaderListener = () => {
	window.addEventListener('scroll', function (e) {
		theHuyApp.currentScrollY = window.scrollY;
		if (theHuyApp.currentScrollY <= 80) {
			window.requestAnimationFrame(function () {
				theHuyApp.removeClass(theHuyApp.select('.canhcam-header-1'), 'collapse')
			});
		} else {
			theHuyApp.addClass(theHuyApp.select('.canhcam-header-1'), 'collapse')
		}

	});
}

/////////////-----------END OF HEADER------------///////////////


/////////////-----------FOOTER------------///////////////

const footerNavAndInfoSwitch = () => {
	return new MappingListener({
		selector: '.footer-info-wrapper',
		mobileWrapper: '.footer-nav-wrapper',
		mobileMethod: 'insertBefore',
		desktopWrapper: '.footer-nav-wrapper',
		desktopMethod: 'insertAfter',
		breakpoint: 992
	}).watch();
}

/////////////-----------END OF FOOTER------------///////////////


/////////////-----------BANNER------------///////////////

const homeBannerInit = () => {
	return tns({
		container: '.banner-home-wrapper',
		items: 1,
		slideBy: 'page',
		autoplay: true,
		autoplayButtonOutput: false,
		controls: false,
		nav: false
	});
}

const normalBannerInit = () => {
	return tns({
		container: '.banner-1-wrapper',
		items: 1,
		slideBy: 'page',
		autoplay: true,
		autoplayButtonOutput: false,
		controls: false,
		nav: false
	});
}


/////////////-----------END OF BANNER------------///////////////


/////////////-----------ABOUT------------///////////////

const aboutSliderInit = () => {
	return tns({
		container: '.about-slider',
		items: 1,
		slideBy: 'page',
		autoplay: true,
		autoplayButtonOutput: false,
		controls: true,
		controlsText: ["<span class='mdi mdi-arrow-left'></span>", "<span class='mdi mdi-arrow-right'></span>"],
		nav: false
	});
}

/////////////-----------END OF ABOUT------------///////////////


/////////////-----------SERVICE DETAIL------------///////////////

const tabHeadersMapping = () => {
	let tabHeaders = theHuyApp.selectAll('[data-tab-id]');
	for (let i = 0; i < tabHeaders.length; i++) {
		Mapping.mapElements.from(`[data-tab-id='${i + 1}']`).to('.tab-headers-mapping').use('appendTo');
	}
}

const tabContentsMapping = () => {
	let tabContents = theHuyApp.selectAll('[data-tab]');
	for (let i = 0; i < tabContents.length; i++) {
		Mapping.mapElements.from(`[data-tab='${i + 1}']`).to('.tab-contents-mapping').use('appendTo');
	}
}

const tabToggle = () => {
	let tabHeaders = theHuyApp.selectAll('[data-tab-id]');
	for (let i = 0; i < tabHeaders.length; i++) {
		theHuyApp.select(`[data-tab-id='${i + 1}']`).addEventListener('click', (e) => {
			//Tab headers toggle
			for (let i = 0; i < tabHeaders.length; i++) {
				theHuyApp.removeClass(theHuyApp.select(`[data-tab-id='${i + 1}']`), 'active')
			}
			let currentTabHeader = e.currentTarget.dataset.tabId
			theHuyApp.addClass(theHuyApp.select(`[data-tab-id='${currentTabHeader}']`), 'active')

			//Tab contents toggle
			for (let i = 0; i < tabHeaders.length; i++) {
				theHuyApp.removeClass(theHuyApp.select(`[data-tab='${i + 1}']`), 'active')
			}
			let currentTabContent = e.currentTarget.dataset.tabId
			theHuyApp.addClass(theHuyApp.select(`[data-tab='${currentTabContent}']`), 'active')
		})
	}
}

const setTabWrapperMaxHeight = () => {
	let tabContents = theHuyApp.selectAll('[data-tab]');
	let maxHeight = 0;
	for (let i = 0; i < tabContents.length; i++) {
		let currentHeight = theHuyApp.select(`[data-tab='${i + 1}']`).clientHeight;
		if (currentHeight >= maxHeight) {
			maxHeight = currentHeight;
		}
	}
	theHuyApp.select('.tab-contents-mapping').style.height = `${maxHeight / 16}rem`;
}

const setTabWrapperMaxHeightListener = () => {
	window.onresize = () => {
		try {
			setTabWrapperMaxHeight();
		} catch (error) {

		}
	}
}

/////////////-----------END OF SERVICE DETAIL------------///////////////


/////////////-----------PROJECTS------------///////////////

const hidePaginationNav = () => {
	theHuyApp.select('.FirstPage').parentElement.style.display = "none"
	theHuyApp.select('.BackPage').parentElement.style.display = "none"
	theHuyApp.select('.NextPage').parentElement.style.display = "none"
	theHuyApp.select('.LastPage').parentElement.style.display = "none"
}

/////////////-----------END OF PROJECTS------------///////////////


/////////////-----------PROJECT DETAIL------------///////////////

const projectDetailSliderInit = () => {
	return theHuyApp.projectDetailSlider = tns({
		container: '.project-detail-slider',
		items: 1,
		slideBy: 'page',
		controls: true,
		controlsText: ["<span class='lnr lnr-arrow-left'></span>", "<span class='lnr lnr-arrow-right'></span>"],
		navContainer: ".project-detail-thumbnails",
		navAsThumbnails: true,
		loop: false
	});
}

const projectDetailOthersSliderInit = () => {
	return tns({
		container: '.other-project-details',
		items: 1,
		slideBy: 1,
		controls: true,
		controlsText: ["<span class='mdi mdi-chevron-left'></span>", "<span class='mdi mdi-chevron-right'></span>"],
		loop: false,
		nav: false,
		responsive: {
			768: {
				items: 3
			}
		}
	});
}

const sliderCounterMapping = () => {
	Mapping.mapElements.from('.slider-counter').to('.tns-controls button').use('insertAfter');
}

const setSliderCounterTotal = () => {
	theHuyApp.select('.slider-counter .total').innerText = theHuyApp.select('.project-detail-thumbnails').childElementCount;
}

const setSliderCounterCurrentIndex = () => {
	theHuyApp.projectDetailSlider.events.on('indexChanged', () => {
		let currentIndex = theHuyApp.projectDetailSlider.getInfo().displayIndex;
		if (currentIndex < 10) {
			theHuyApp.select('.slider-counter .current-count').innerText = `0${currentIndex}`;
		} else {
			theHuyApp.select('.slider-counter .current-count').innerText = currentIndex;
		}
	})
}

const projectDetailsOtherSliderMapping = () => {
	Mapping.mapElements.from('.duanct-2 .tns-controls').to('.duanct-2 .tagline').use('appendTo');
}

/////////////-----------END OF PROJECT DETAIL------------///////////////


/////////////-----------GALLERY------------///////////////

const galleryInit = () => {
	$(".thuvien-1 .gallery").lightGallery({
		thumbnail: true
	});
}

/////////////-----------END OF GALLERY------------///////////////


/////////////-----------DISTRIBUTION------------///////////////

const distributionSidemenuMapping = () => {
	return new MappingListener({
		selector: '.distribution',
		mobileWrapper: '.distribution-sidemenu',
		mobileMethod: 'appendTo',
		desktopWrapper: '.distribution-wrapper',
		desktopMethod: 'prependTo',
		breakpoint: 992
	}).watch();
}

const toggleDistributionSidemenu = () => {
	theHuyApp.select('.distribution-sidemenu-toggle-button').onclick = () => {
		theHuyApp.active('.distribution-sidemenu', 'active')
		theHuyApp.active('.distribution-sidemenu-backdrop', 'active')
	}
	theHuyApp.select('.distribution-sidemenu-close-button').onclick = () => {
		theHuyApp.active('.distribution-sidemenu', 'active')
		theHuyApp.active('.distribution-sidemenu-backdrop', 'active')
	}
	theHuyApp.select('.distribution-sidemenu-backdrop').onclick = () => {
		theHuyApp.active('.distribution-sidemenu', 'active')
		theHuyApp.active('.distribution-sidemenu-backdrop', 'active')
	}
}

/////////////-----------END OF DISTRIBUTION------------///////////////


/////////////-----------CAREER------------///////////////

const desktopCareerCollapsible = () => {
	$('.tuyendung-2 .collapse').on('click', (e) => {
		if ($(window).width() >= 768) {
			let contentHeight = $($(e.currentTarget).children()[1]).height();
			if ($(e.currentTarget).height() > contentHeight) {
				$(e.currentTarget).css('height', `${45 / 16}rem`);
				$(e.currentTarget).removeClass('active')
			} else {
				let collapseActiveHeight = $(e.currentTarget).height() + contentHeight;
				$('.tuyendung-2 .collapse').each(function () {
					$(this).css('height', `${45 / 16}rem`);
					$(this).removeClass('active')
				})
				$(e.currentTarget).addClass('active').css('height', `${collapseActiveHeight / 16}rem`)
			}
		} else {
			$($(e.currentTarget).children()[1]).toggleClass('active');
			$('.tuyendung-2 .collapse .collapse-content').on('click', (e) => {
				e.stopPropagation();
			})
			$('.collapse-content-toggle-button').on('click', (e) => {
				$($(e.currentTarget).parent()[0]).removeClass('active')
			})
		}
	})
}

const careerMobileMapping = () => {
	return new MappingListener({
		selector: '.collapse-wrapper',
		mobileWrapper: '.collapse-mobile-wrapper',
		mobileMethod: 'appendTo',
		desktopWrapper: '.collapse-desktop-wrapper',
		desktopMethod: 'appendTo',
		breakpoint: 768
	}).watch();
}

/////////////-----------END OF CAREER------------///////////////

/////////////-----------END OF FUNCTIONS------------///////////////