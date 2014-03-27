$(function () {


	if (window.location.pathname.match(/\/upload*/))
		$('#menu ul li:nth-child(3)').addClass('pure-menu-selected')
	if (window.location.pathname.match(/\/albums/))
		$('#menu ul li:nth-child(2)').addClass('pure-menu-selected')
	if (window.location.pathname.match(/\/users\/\d+/))
		$('#menu ul li:nth-child(1)').addClass('pure-menu-selected')


})