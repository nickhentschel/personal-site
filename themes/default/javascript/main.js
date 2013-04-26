(function ($) {
	$(document).ready(function() {
		$('#scrollup').click(function() {
			if ( $(document).height() > $(window).height() ) {
				$("html, body").animate({ scrollTop: 0 }, "slow");
			}
		});

		$('.nav-links').hide();

		$('#headline, .nav-links').on('mouseenter mouseleave', function () {
			$('.nav-links').stop().slideToggle();
		});		

	    $('body').css('display', 'none');
	 
	    $('body').fadeIn(700);

	    var siteURL = "http://" + top.location.host.toString();
	    $("a[href^='"+siteURL+"'], a[href^='/'], a[href^='./'], a[href^='../'], a[href^='#']").on('click', function(event){
	        event.preventDefault();
	        linkLocation = this.href;
	        $('body').fadeOut(700, redirectPage);      
	    });

	    function redirectPage() {
	        window.location = linkLocation;
	    }
	});
})(jQuery);
