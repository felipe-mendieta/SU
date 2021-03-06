(function ($) {

    $(document).ready(function () {
        var $myDiv = $('#my-menu');
        if ($myDiv.length) {
            mmenu = mmlight(document.querySelector("#my-menu"));
            mmenu.create("(max-width: 767px)");
            mmenu.init("selected");
            $("#main-menu-panel").click(function (e) {
                e.preventDefault();
                if ($("#my-menu").hasClass("mm--open")) {
                    mmenu.close();
                } else {
                    mmenu.open();
                    $("a.dropdown-toggle").focusin(
                            function () {
                                $('.dropdown').addClass('open')
                            }
                    );
                    $("nav li:last").focusout(
                            function () {
                                mmenu.close();
                            }
                    );
                    $("#main-menu-panel").focusin(
                            function () {
                                mmenu.close();
                            }
                    );
                    $("#main-menu-panel").on('keydown blur', function (e) {
                        if (e.shiftKey && e.keyCode === 9) {
                            mmenu.close();
                        }
                    });
                }
                e.stopPropagation();
            });

        }

        // Menu
        function onResizeMenuLayout() {
            if ($(window).width() > 767) {
                $(".dropdown").hover(
                        function () {
                            $(this).addClass('open')
                        },
                        function () {
                            $(this).removeClass('open')
                        }
                );
                $(".dropdown").focusin(
                        function () {
                            $(this).addClass('open')
                        }
                );
                $(".dropdown").focusout(
                        function () {
                            $(this).removeClass('open')
                        }
                );
            } else {
                $(".dropdown").hover(
                        function () {
                            $(this).removeClass('open')
                        }
                );
            }
        }
        ;
        // initial state
        onResizeMenuLayout();
        // on resize
        $(window).on('resize', onResizeMenuLayout);

        $('.navbar .dropdown-toggle').hover(function () {
            $(this).addClass('disabled');
        });
        $('.navbar .dropdown-toggle').focus(function () {
            $(this).addClass('disabled');
        });
    });
})(jQuery);