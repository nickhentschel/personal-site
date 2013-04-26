(function ($) {

	$('#scrollup').click(function() {
		if ( $(document).height() > $(window).height() ) {
			$("html, body").animate({ scrollTop: 0 }, "slow");
		}
	});

	$('.nav-links').hide();

	$('#headline, .nav-links').on('mouseenter mouseleave', function () {
		$('.nav-links').stop().slideToggle();
	});

})(jQuery);
