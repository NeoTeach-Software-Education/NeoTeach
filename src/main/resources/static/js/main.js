;(function () {
	
	'use strict';

	var isMobile = {
		Android: function() {
			return navigator.userAgent.match(/Android/i);
		},
			BlackBerry: function() {
			return navigator.userAgent.match(/BlackBerry/i);
		},
			iOS: function() {
			return navigator.userAgent.match(/iPhone|iPad|iPod/i);
		},
			Opera: function() {
			return navigator.userAgent.match(/Opera Mini/i);
		},
			Windows: function() {
			return navigator.userAgent.match(/IEMobile/i);
		},
			any: function() {
			return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
		}
	};

	var mobileMenuOutsideClick = function() {

		$(document).click(function (e) {
	    var container = $("#colorlib-offcanvas, .js-colorlib-nav-toggle");
	    if (!container.is(e.target) && container.has(e.target).length === 0) {

	    	if ( $('body').hasClass('offcanvas') ) {

    			$('body').removeClass('offcanvas');
    			$('.js-colorlib-nav-toggle').removeClass('active');
				
	    	}
	    
	    	
	    }
		});

	};


	var offcanvasMenu = function() {

		$('#page').prepend('<div id="colorlib-offcanvas" />');
		$('#page').prepend('<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle colorlib-nav-white"><i></i></a>');
		var clone1 = $('.menu-1 > ul').clone();
		$('#colorlib-offcanvas').append(clone1);
		var clone2 = $('.menu-2 > ul').clone();
		$('#colorlib-offcanvas').append(clone2);

		$('#colorlib-offcanvas .has-dropdown').addClass('offcanvas-has-dropdown');
		$('#colorlib-offcanvas')
			.find('li')
			.removeClass('has-dropdown');

		// Hover dropdown menu on mobile
		$('.offcanvas-has-dropdown').mouseenter(function(){
			var $this = $(this);

			$this
				.addClass('active')
				.find('ul')
				.slideDown(500, 'easeOutExpo');				
		}).mouseleave(function(){

			var $this = $(this);
			$this
				.removeClass('active')
				.find('ul')
				.slideUp(500, 'easeOutExpo');				
		});


		$(window).resize(function(){

			if ( $('body').hasClass('offcanvas') ) {

    			$('body').removeClass('offcanvas');
    			$('.js-colorlib-nav-toggle').removeClass('active');
				
	    	}
		});
	};

	var burgerMenu = function() {

		$('body').on('click', '.js-colorlib-nav-toggle', function(event){
			var $this = $(this);


			if ( $('body').hasClass('overflow offcanvas') ) {
				$('body').removeClass('overflow offcanvas');
			} else {
				$('body').addClass('overflow offcanvas');
			}
			$this.toggleClass('active');
			event.preventDefault();

		});
	};
	

	var contentWayPoint = function() {
		var i = 0;
		$('.animate-box').waypoint( function( direction ) {

			if( direction === 'down' && !$(this.element).hasClass('animated-fast') ) {
				
				i++;

				$(this.element).addClass('item-animate');
				setTimeout(function(){

					$('body .animate-box.item-animate').each(function(k){
						var el = $(this);
						setTimeout( function () {
							var effect = el.data('animate-effect');
							if ( effect === 'fadeIn') {
								el.addClass('fadeIn animated-fast');
							} else if ( effect === 'fadeInLeft') {
								el.addClass('fadeInLeft animated-fast');
							} else if ( effect === 'fadeInRight') {
								el.addClass('fadeInRight animated-fast');
							} else {
								el.addClass('fadeInUp animated-fast');
							}

							el.removeClass('item-animate');
						},  k * 200, 'easeInOutExpo' );
					});
					
				}, 100);
				
			}

		} , { offset: '85%' } );
	};


	var dropdown = function() {

		$('.has-dropdown').mouseenter(function(){

			var $this = $(this);
			$this
				.find('.dropdown')
				.css('display', 'block')
				.addClass('animated-fast fadeInUpMenu');

		}).mouseleave(function(){
			var $this = $(this);

			$this
				.find('.dropdown')
				.css('display', 'none')
				.removeClass('animated-fast fadeInUpMenu');
		});

	};


	var goToTop = function() {

		$('.js-gotop').on('click', function(event){
			
			event.preventDefault();

			$('html, body').animate({
				scrollTop: $('html').offset().top
			}, 500, 'easeInOutExpo');
			
			return false;
		});

		$(window).scroll(function(){

			var $win = $(window);
			if ($win.scrollTop() > 200) {
				$('.js-top').addClass('active');
			} else {
				$('.js-top').removeClass('active');
			}

		});
	
	};


	// Loading page
	var loaderPage = function() {
		$(".colorlib-loader").fadeOut("slow");
	};

	var counter = function() {
		$('.js-counter').countTo({
			 formatter: function (value, options) {
	      return value.toFixed(options.decimals);
	    },
		});
	};


	var counterWayPoint = function() {
		if ($('#colorlib-counter').length > 0 ) {
			$('#colorlib-counter').waypoint( function( direction ) {
										
				if( direction === 'down' && !$(this.element).hasClass('animated') ) {
					setTimeout( counter , 400);					
					$(this.element).addClass('animated');
				}
			} , { offset: '90%' } );
		}
	};

	var sliderMain = function() {
		
	  	$('#colorlib-hero .flexslider').flexslider({
			animation: "fade",

			// easing: "swing",
			// direction: "vertical",

			slideshowSpeed: 5000,
			directionNav: true,
			start: function(){
				setTimeout(function(){
					$('.slider-text').removeClass('animated fadeInUp');
					$('.flex-active-slide').find('.slider-text').addClass('animated fadeInUp');
				}, 500);
			},
			before: function(){
				setTimeout(function(){
					$('.slider-text').removeClass('animated fadeInUp');
					$('.flex-active-slide').find('.slider-text').addClass('animated fadeInUp');
				}, 500);
			}

	  	});

	};

	var parallax = function() {

		if ( !isMobile.any() ) {
			$(window).stellar({
				horizontalScrolling: false,
				hideDistantElements: false, 
				responsive: true

			});
		}
	};

	// Owl Carousel
	var owlCrouselFeatureSlide = function() {
		var owl = $('.owl-carousel');
		owl.owlCarousel({
			center: true,
			animateOut: 'fadeOut',
		   animateIn: 'fadeIn',
			autoplay: false,
			items: 1,
			autoHeight: true,
		   loop: false,
		   margin: 0,
		   responsive:{
		      0:{
		         items:1
		      },
	         600:{
		         items:2
		      },
		      1000:{
		         items:4
		      }
		   },
		   nav: false,
		   dots: true,
		   autoplayHoverPause: true,
		   mouseDrag: false,
		   smartSpeed: 500,
		   navText: [
		      "<i class='icon-arrow-left3 owl-direction'></i>",
		      "<i class='icon-arrow-right3 owl-direction'></i>"
	     	]
		});
	};

	
	$(function(){
		mobileMenuOutsideClick();
		offcanvasMenu();
		burgerMenu();
		contentWayPoint();
		sliderMain();
		dropdown();
		goToTop();
		loaderPage();
		counter();
		counterWayPoint();
		parallax();
		owlCrouselFeatureSlide();
	});

	 /** Dashboard JS **/
    $(document).on('click', '.withdraw-preference-method-name', function(e) {
        $('.withdraw-method-form').hide();
        $('#'+$(this).attr('data-target')).show();
    });

    /** END: Dashboard Js **/
    
    /**
     * Custom Toogle Menu For Top Nav
     */
    $(document).on('click', '.browse-categories-nav-link', function(e) {
        e.preventDefault();
        var $ul = $('.categories-ul-first');
        if ($ul.hasClass('d-block')){
            $ul.removeClass('d-block').addClass('d-none');
        }else{
            $ul.removeClass('d-none').addClass('d-block');
        }
    });
    $(document).on('click', '#miniCartDropDown', function(e) {
        e.preventDefault();
        var $ul = $('.mini-cart-body-wrap');
        if ($ul.hasClass('d-block')){
            $ul.removeClass('d-block').addClass('d-none');
        }else{
            $ul.removeClass('d-none').addClass('d-block');
        }
    });
    $(document).on('click', '.profile-dropdown-toogle', function(e) {
        e.preventDefault();
        var $ul = $('.profile-dropdown-menu');
        if ($ul.hasClass('d-block')){
            $ul.removeClass('d-block').addClass('d-none');
        }else{
            $ul.removeClass('d-none').addClass('d-block');
        }
    });
    /** END Custom Toggle Menu **/
    
    $(document).on('click', '.remove-cart-btn', function(e) {
        e.preventDefault();

        var $btn = $(this);
        var cart_id = $btn.attr('data-cart-id');
        $btn.closest('.mini-cart-course-item').remove();
        $.post(pageData.routes.remove_cart, {cart_id : cart_id, _token : pageData.csrf_token}, function(response){
            if (response.success){
                $('.dropdown.mini-cart-item').html(response.cart_html);
            }
        });
    });

    $(document).on('click', 'a.nav-icon-list', function(e) {
        e.preventDefault();
        $('.lecture-sidebar').toggle();
    });
    
    /**
     * Progress bar Circle
     */
    $(".progress.circle").each(function() {
        var value = $(this).attr('data-value');
        var left = $(this).find('.progress-left .progress-bar');
        var right = $(this).find('.progress-right .progress-bar');

        if (value > 0) {
            if (value <= 50) {
                right.css('transform', 'rotate(' + percentageToDegrees(value) + 'deg)')
            } else {
                right.css('transform', 'rotate(180deg)')
                left.css('transform', 'rotate(' + percentageToDegrees(value - 50) + 'deg)')
            }
        }
    });
    function percentageToDegrees(percentage) {
        return percentage / 100 * 360
    }
    /**
     * END Progress bar
     */
    /**
     * Characters limits
     */
    $(document).on('keyup change', '[data-maxlength]', function(e) {
        e.preventDefault();
        var $that = $(this);
        var length = parseInt($that.attr('data-maxlength'));
        var value = $that.val();
        var remaining_length = length - value.length;
        if (remaining_length < 1){
            remaining_length = 0;
        }
        $that.closest('.form-group').find('.input-group-text').html(remaining_length);

        if (value.length  > length){
            $that.val(value.substr(0, length));
        }
    });

    function collapse_if_much_height() {
        var $contentExpandInner = $('.content-expand-inner');
        if ($contentExpandInner.length) {
            $contentExpandInner.each(function (index, item) {
                var $that = $(this);
                var height = $that.height();
                if (height > 270) {
                    $(this).closest('.content-expand-wrap').append('<span class="expand-more-btn-wrap"><button type="button" class="expand-more-btn btn-sm btn btn-link"> + See More</button></span>');
                }
            });
        }
        $(document).on('click', '.expand-more-btn', function (e) {
            e.preventDefault();
            var $that = $(this);

            $that.closest('.content-expand-wrap').css("max-height", "none");
            $that.closest('.expand-more-btn-wrap').remove();
        });
    }
    collapse_if_much_height();


    /**
     * Expand Collapse Section
     */
    $(document).on('click', '.course-section-header', function (e) {
        var $that = $(this);

        var display = $that.next('.course-section-body').css("display").trim();
        if (display === 'none'){
            $that.find('i.la').removeClass('la-plus').addClass('la-minus');
        }else{
            $that.find('i.la').removeClass('la-minus').addClass('la-plus');
        }
        $that.next('.course-section-body').slideToggle();
    });

    $(document).on('click', '#expand-collapse-all-sections a', function (e) {
        var $that = $(this);
        $that.hide();

        var action = $that.attr('data-action');
        if (action === 'expand'){
            $('a[data-action="collapse"]').show();
            $('.course-section-name i.la').removeClass('la-plus').addClass('la-minus');
            $('.course-section .course-section-body').slideDown();
        }else{
            $('a[data-action="expand"]').show();
            $('.course-section-name i.la').removeClass('la-minus').addClass('la-plus');
            $('.course-section .course-section-body').slideUp();
        }
    });
    //END Collapse Section


    /**
     * Add To Cart
     */

    //add-to-cart-btn

    $(document).on('click', '.add-to-cart-btn', function (e) {
        var $btn = $(this);
        var course_id = $btn.attr('data-course-id');

        if ( ! pageData.is_logged_in){
            //$('#loginFormModal').modal('show');
            //return;
        }

        $.ajax({
            url : pageData.routes.add_to_cart,
            type : 'POST',
            data : {course_id : course_id, _token : pageData.csrf_token},
            beforeSend: function () {
                $btn.addClass('loader').attr('disabled', 'disabled');
            },
            success: function (response) {
                if (response.success){
                    $('.dropdown.mini-cart-item').html(response.cart_html);
                    $btn.html("<i class='la la-check-circle'></i> In Cart");
                }else{
                    $btn.removeClass('loader').removeAttr('disabled');
                }
            },
            error : function(jqXHR, textStatus, errorThrown){
                $btn.removeClass('loader').removeAttr('disabled');
            },
            complete: function () {
                $btn.removeClass('loader');
            }
        });

    });

    if ($('#loginFormModalShouldOpen').length){
        $('#loginFormModalShouldOpen').modal('show');
    }
    
    /**
     * Checkout page
     */
    $('.checkout-payment-methods-wrap .tab-pane:first-child').addClass('show active');

    /**
     * Rating set
     */
    $(document).on('mouseenter', '.review-write-star-wrap i', function(){
        $(this).closest('.review-write-star-wrap').find('i').removeClass('la-star').addClass('la-star-o');
        var ratingValue = $(this).attr('data-rating-value');

        for (var i = 1; i<= ratingValue; i++){
            $(this).closest('.review-write-star-wrap').find('i[data-rating-value="'+i+'"]').removeClass('la-star-o').addClass('la-star');
        }
        $(this).closest('.review-write-star-wrap').find('input[name="rating_value"]').val(ratingValue);
    });

    /**
     * Add to WishList
     */
    $(document).on('click', '.course-card-add-wish', function(){
        if ( ! pageData.is_logged_in){
            $('#loginFormModal').modal('show');
            return false;
        }
        var $btn = $(this);
        var course_id = $btn.attr('data-course-id');

        $.ajax({
            url : pageData.routes.update_wish_list,
            type : 'POST',
            data : {course_id : course_id, _token : pageData.csrf_token},
            beforeSend: function () {
                $btn.addClass('loader').attr('disabled', 'disabled');
            },
            success: function (response) {
                if (response.success){
                    if (response.state === 'added'){
                        $btn.find('i').removeClass('la-heart-o').addClass('la-heart');
                    }else{
                        $btn.find('i').removeClass('la-heart').addClass('la-heart-o');
                    }

                }
            },
            complete: function () {
                $btn.removeClass('loader').removeAttr('disabled');;
            }
        });
    });

    $(document).on('change', '#course-filter-form', function() {
        $(this).submit();
    });

    
    
    

}());