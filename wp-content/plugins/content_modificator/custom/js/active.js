jQuery(document).ready(function ($) {
    $('#counter-block').ready(function () {
        $('.client').owlCarousel({
            loop: true,
            margin: 10,
            nav: false,
            dots: false,
            items: 1,
            autoplayTimeout: 5000,
            autoplay: true,
        });

        $('.activity-content').owlCarousel({
            loop: true,
            margin: 40,
            nav: false,
            dots: false,
            items: 3,
            width: '100%',
            autoplayTimeout: 6000,
            autoplay: true,
            responsive: {
                992: {
                    items: 3,
                    loop: true
                },
                501: {
                    items: 2,
                    loop: true
                },
                0: {
                    items: 1,
                    loop: true
                }
            },
        });

        $('.event-content').owlCarousel({
            loop: true,
            margin: 40,
            nav: false,
            dots: false,
            items: 3,
            width: '100%',
            autoplayTimeout: 6000,
            autoplay: true,
            responsive: {
                992: {
                    items: 3,
                    loop: true
                },
                501: {
                    items: 2,
                    loop: true
                },
                0: {
                    items: 1,
                    loop: true
                }
            },
        });

        $('.donors_featured').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            items: 1,
            autoplayTimeout: 6000,
            autoplay: true,
            navText: [
                "<i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>",
                "<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>"],
        });

        $('.volunteer_single').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            items: 3,
            autoplayTimeout: 6000,
            autoplay: true,
            navText: [
                "<i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>",
                "<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>"],
            responsive: {
                1400: {
                    items: 3,
                    nav: true,
                    loop: true
                },
                768: {
                    items: 2,
                    nav: true,
                    loop: true
                },
                500: {
                    items: 2,
                    nav: true,
                    loop: true
                },
                0: {
                    items: 1,
                    nav: true,
                    loop: true
                }
            },
        });

        $('.carosal_bottom_single').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            items: 1,
            autoplayTimeout: 6000,
            autoplay: true,
            navText: [
                "<i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>",
                "<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>"],
        });

        $('.footer_carosal_icon').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            items: 5,
            autoplayTimeout: 6000,
            autoplay: true,
            navText: [
                "<i class=\"fa fa-angle-left\" aria-hidden=\"true\"></i>",
                "<i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i>"],
            responsive: {
                1400: {
                    items: 5,
                    nav: true,
                    loop: true
                },
                991: {
                    items: 4,
                    nav: true,
                    loop: true
                },
                768: {
                    items: 4,
                    nav: true,
                    loop: true
                },
                500: {
                    items: 3,
                    nav: true,
                    loop: true
                },
                0: {
                    items: 2,
                    nav: true,
                    loop: true
                }
            },
        });

        $('.bike').animationCounter({
            start: 0,
            end: 1700,
            step: 17,
            delay: 200,
        });
        $('.code').animationCounter({
            start: 0,
            end: 200,
            step: 4,
            delay: 400,
        });
        $('.coffee').animationCounter({
            start: 0,
            end: 3000,
            step: 15,
            delay: 100,
        });


        feather.replace();
    });

});

function navigateTo(url) {
    window.location.href = url;
}

function donate() {
    const submitInput = document.querySelector('input[name="submit"]');
    submitInput.click();
}