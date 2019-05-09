<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../master-page/urls.jsp" %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="${urlCss}" type="text/css" media="all" rel="stylesheet" />
        <link href="${urlMenuCss}" type="text/css" media="all" rel="stylesheet" />

        <script js>
            (function ($) {
                $.fn.aceResponsiveMenu = function (options) {

                    //plugin's default options
                    var defaults = {
                        resizeWidth: '768',
                        animationSpeed: 'slow',
                        accoridonExpAll: false
                    };

                    //Variables
                    var options = $.extend(defaults, options),
                            opt = options,
                            $resizeWidth = opt.resizeWidth,
                            $animationSpeed = opt.animationSpeed,
                            $expandAll = opt.accoridonExpAll,
                            $aceMenu = $(this),
                            $menuStyle = $(this).attr('data-menu-style');

                    // Initilizing        
                    $aceMenu.find('ul').addClass("sub-menu");
                    $aceMenu.find('ul').siblings('a').append('<i class="fas fa-angle-down"></i>');
                    if ($menuStyle == 'accordion') {
                        $(this).addClass('collapse');
                    }

                    // Window resize on menu breakpoint 
                    if ($(window).innerWidth() <= $resizeWidth) {
                        menuCollapse();
                    }
                    $(window).resize(function () {
                        menuCollapse();
                    });

                    // Menu Toggle
                    function menuCollapse() {
                        var w = $(window).innerWidth();
                        if (w <= $resizeWidth) {
                            $aceMenu.find('li.menu-active').removeClass('menu-active');
                            $aceMenu.find('ul.slide').removeClass('slide').removeAttr('style');
                            $aceMenu.addClass('collapse hide-menu');
                            $aceMenu.attr('data-menu-style', '');
                            $('.menu-toggle').show();
                        } else {
                            $aceMenu.attr('data-menu-style', $menuStyle);
                            $aceMenu.removeClass('collapse hide-menu').removeAttr('style');
                            $('.menu-toggle').hide();
                            if ($aceMenu.attr('data-menu-style') == 'accordion') {
                                $aceMenu.addClass('collapse');
                                return;
                            }
                            $aceMenu.find('li.menu-active').removeClass('menu-active');
                            $aceMenu.find('ul.slide').removeClass('slide').removeAttr('style');
                        }
                    }

                    //ToggleBtn Click
                    $('#menu-btn').click(function () {
                        $aceMenu.slideToggle().toggleClass('hide-menu');
                    });


                    // Main function 
                    return this.each(function () {
                        // Function for Horizontal menu on mouseenter
                        $aceMenu.on('mouseover', '> li a', function () {
                            if ($aceMenu.hasClass('collapse') === true) {
                                return false;
                            }
                            $(this).off('click', '> li a');
                            $(this).parent('li').siblings().children('.sub-menu').stop(true, true).slideUp($animationSpeed).removeClass('slide').removeAttr('style').stop();
                            $(this).parent().addClass('menu-active').children('.sub-menu').slideDown($animationSpeed).addClass('slide');
                            return;
                        });
                        $aceMenu.on('mouseleave', 'li', function () {
                            if ($aceMenu.hasClass('collapse') === true) {
                                return false;
                            }
                            $(this).off('click', '> li a');
                            $(this).removeClass('menu-active');
                            $(this).children('ul.sub-menu').stop(true, true).slideUp($animationSpeed).removeClass('slide').removeAttr('style');
                            return;
                        });
                        //End of Horizontal menu function

                        // Function for Vertical/Responsive Menu on mouse click
                        $aceMenu.on('click', '> li a', function () {
                            if ($aceMenu.hasClass('collapse') === false) {
                                //return false;
                            }
                            $(this).off('mouseover', '> li a');
                            if ($(this).parent().hasClass('menu-active')) {
                                $(this).parent().children('.sub-menu').slideUp().removeClass('slide');
                                $(this).parent().removeClass('menu-active');
                            } else {
                                if ($expandAll == true) {
                                    $(this).parent().addClass('menu-active').children('.sub-menu').slideDown($animationSpeed).addClass('slide');
                                    return;
                                }
                                $(this).parent().siblings().removeClass('menu-active');
                                $(this).parent('li').siblings().children('.sub-menu').slideUp().removeClass('slide');
                                $(this).parent().addClass('menu-active').children('.sub-menu').slideDown($animationSpeed).addClass('slide');
                            }
                        });
                        //End of responsive menu function

                    });
                    //End of Main function
                }
            })(jQuery);

        </script>


    </head>
    <body>