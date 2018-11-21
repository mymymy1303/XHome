const theHuyApp = {
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
	}
}

theHuyApp.ready(() => {
	if (window.matchMedia("(min-width: 992px)").matches) {
		/* The viewport is greater than, or equal to, 992 pixels wide */

		//Toggle desktop searchbox
		theHuyApp.avoidNull(desktop_searchToggle);
	} else {
		/* The viewport is less than 992 pixels wide */
	}
})

const desktop_searchToggle = () => {
	theHuyApp.select('.search-toggle').onclick = () => {
		theHuyApp.active('.search-wrapper', 'active');
	}
}