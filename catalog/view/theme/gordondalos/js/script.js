function include(scriptUrl) {
    document.write('<script src="' + scriptUrl + '"></script>');
}

function isIE() {
    var myNav = navigator.userAgent.toLowerCase();
    return (myNav.indexOf('msie') != -1) ? parseInt(myNav.split('msie')[1]) : false;
};

/* cookie.JS
 ========================================================*/
include('catalog/view/theme/gordondalos/js/jquery.cookie.js');

/* Easing library
 ========================================================*/
include('catalog/view/theme/gordondalos/js/jquery.easing.1.3.js');

/* PointerEvents
 ========================================================*/
;
(function ($) {
    if (isIE() && isIE() < 11) {
        include('catalog/view/theme/gordondalos/js/pointer-events.js');
        $('html').addClass('lt-ie11');
        $(document).ready(function () {
            PointerEventsPolyfill.initialize({});
        });
    }
})(jQuery);

/* Stick up menus
 ========================================================*/
;
(function ($) {
    var o = $('html');
    if (o.hasClass('desktop')) {
        include('catalog/view/theme/gordondalos/js/tmstickup.js');

        $(document).ready(function () {
            $('#stuck_container').TMStickUp({})
        });
    }
})(jQuery);

/* ToTop
 ========================================================*/
;
(function ($) {
    var o = $('html');
    if (o.hasClass('desktop')) {
        include('catalog/view/theme/gordondalos/js/jquery.ui.totop.js');

        $(document).ready(function () {
            $().UItoTop({
                easingType: 'easeOutQuart',
                containerClass: 'toTop fa fa-angle-up'
            });
        });
    }
})(jQuery);

/* EqualHeights
 ========================================================*/
;
(function ($) {
    var o = $('[data-equal-group]');
    if (o.length > 0) {
        include('catalog/view/theme/gordondalos/js/jquery.equalheights.js');
    }
})(jQuery);


/* Copyright Year
 ========================================================*/
;
(function ($) {
    var currentYear = (new Date).getFullYear();
    $(document).ready(function () {
        $("#copyright-year").text((new Date).getFullYear());
    });
})(jQuery);


/* Superfish menus
 ========================================================*/
;
(function ($) {
    include('catalog/view/theme/gordondalos/js/superfish.js');
})(jQuery);

/* Navbar
 ========================================================*/
;
(function ($) {
    include('catalog/view/theme/gordondalos/js/jquery.rd-navbar.js');
})(jQuery);


/* WOW
 ========================================================*/
;
(function ($) {
    var o = $('html');

    if ((navigator.userAgent.toLowerCase().indexOf('msie') == -1 ) || (isIE() && isIE() > 9)) {
        if (o.hasClass('desktop')) {
            include('catalog/view/theme/gordondalos/js/wow.js');

            $(document).ready(function () {
                new WOW().init();
            });
        }
    }
})(jQuery);

/* Mailform
 =============================================*/
;
(function ($) {
    include('catalog/view/theme/gordondalos/js/mailform/jquery.form.min.js');
    include('catalog/view/theme/gordondalos/js/mailform/jquery.rd-mailform.min.c.js');
})(jQuery);

/* Orientation tablet fix
 ========================================================*/
$(function () {
    // IPad/IPhone
    var viewportmeta = document.querySelector && document.querySelector('meta[name="viewport"]'),
        ua = navigator.userAgent,

        gestureStart = function () {
            viewportmeta.content = "width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0";
        },

        scaleFix = function () {
            if (viewportmeta && /iPhone|iPad/.test(ua) && !/Opera Mini/.test(ua)) {
                viewportmeta.content = "width=device-width, minimum-scale=1.0, maximum-scale=1.0";
                document.addEventListener("gesturestart", gestureStart, false);
            }
        };

    scaleFix();
    // Menu Android
    if (window.orientation != undefined) {
        var regM = /ipod|ipad|iphone/gi,
            result = ua.match(regM);
        if (!result) {
            $('.sf-menus li').each(function () {
                if ($(">ul", this)[0]) {
                    $(">a", this).toggle(
                        function () {
                            return false;
                        },
                        function () {
                            window.location.href = $(this).attr("href");
                        }
                    );
                }
            })
        }
    }
});
var ua = navigator.userAgent.toLocaleLowerCase(),
    regV = /ipod|ipad|iphone/gi,
    result = ua.match(regV),
    userScale = "";
if (!result) {
    userScale = ",user-scalable=0"
}
document.write('<meta name="viewport" content="width=device-width,initial-scale=1.0' + userScale + '">');
/* Search.js
 ========================================================*/
;
(function ($) {
    var o = $('.search-form, #search-results');
    if (o.length > 0) {
        include('catalog/view/theme/gordondalos/js/TMSearch.js');
    }
})(jQuery);
/* Owl Carousel
 ========================================================*/
;
(function ($) {
    var o = $('.owl-carousel');
    if (o.length > 0) {
        include('catalog/view/theme/gordondalos/js/owl.carousel.min.js');
        $(document).ready(function () {
            o.owlCarousel({
                margin: 30,
                smartSpeed: 450,
                items: 1,
                loop: true,
                dots: true,
                nav: false,
                animateIn: 'fadeIn',
                navClass: ['owl-prev fa fa-angle-left', 'owl-next fa fa-angle-right']
            });
        });
    }
})(jQuery);

/* Parallax
 =============================================*/
;
(function ($) {
    include('catalog/view/theme/gordondalos/js/jquery.rd-parallax.js');
})(jQuery);


/* Подцветка меню ===========================*/

;
(function ($) {
    var url = document.location.href;
    $.each($("a.menus"), function () {
        var a = $(this);

        if (a.attr('href') == url) {
            a.parent().addClass('active');
        }
    });
})(jQuery);