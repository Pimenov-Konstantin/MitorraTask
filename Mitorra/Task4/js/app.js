console.log([].map.call(document.querySelectorAll('.select[data-id]'), function (el) {
	return el.dataset.id;
}));