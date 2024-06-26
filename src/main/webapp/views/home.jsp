<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<fmt:setLocale value="vi_VN" scope="session"/>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Corano - Jewelry Shop</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="${contextPath}/resources/home/assets/img/favicon.ico">

    <!-- CSS
	============================================ -->
    <!-- google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,900" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/home/assets/css/vendor/bootstrap.min.css">
    <!-- Pe-icon-7-stroke CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/home/assets/css/vendor/pe-icon-7-stroke.css">
    <!-- Font-awesome CSS -->
    <link rel="stylesheet" href="${contextPath}/resources/home/assets/css/vendor/font-awesome.min.css">
    <!-- Slick slider css -->
    <link rel="stylesheet" href="${contextPath}/resources/home/assets/css/plugins/slick.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="${contextPath}/resources/home/assets/css/plugins/animate.css">
    <!-- Nice Select css -->
    <link rel="stylesheet" href="${contextPath}/resources/home/assets/css/plugins/nice-select.css">
    <!-- jquery UI css -->
    <link rel="stylesheet" href="${contextPath}/resources/home/assets/css/plugins/jqueryui.min.css">
    <!-- main style css -->
    <link rel="stylesheet" href="${contextPath}/resources/home/assets/css/style.css">

</head>

<body>
<!-- Start Header Area -->
<header class="header-area header-wide">
    <!-- main header start -->
    <div class="main-header d-none d-lg-block">
        <!-- header top start -->
        <div class="header-top bdr-bottom">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="welcome-message">
                            <p>Welcome to Corano Jewelry online store</p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-right">
                        <div class="header-top-settings">
                            <ul class="nav align-items-center justify-content-end">
                                <li class="curreny-wrap">
                                    $ Currency
                                    <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list curreny-list">
                                        <li><a href="#">$ USD</a></li>
                                        <li><a href="#">€ EURO</a></li>
                                    </ul>
                                </li>
                                <li class="language">
                                    <img src="${contextPath}/resources/home/assets/img/icon/en.png" alt="flag"> English
                                    <i class="fa fa-angle-down"></i>
                                    <ul class="dropdown-list">
                                        <li><a href="#"><img src="${contextPath}/resources/home/assets/img/icon/en.png" alt="flag"> english</a>
                                        </li>
                                        <li><a href="#"><img src="${contextPath}/resources/home/assets/img/icon/fr.png" alt="flag"> french</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header top end -->

        <!-- header middle area start -->
        <div class="header-main-area sticky">
            <div class="container">
                <div class="row align-items-center position-relative">

                    <!-- start logo area -->
                    <div class="col-lg-2">
                        <div class="logo">
                            <a href="${contextPath}/">
                                <img src="${contextPath}/resources/home/assets/img/logo/logo.png" alt="Brand Logo">
                            </a>
                        </div>
                    </div>
                    <!-- start logo area -->

                    <!-- main menu area start -->
                    <div class="col-lg-6 position-static">
                        <div class="main-menu-area">
                            <div class="main-menu">
                                <!-- main menu navbar start -->
                                <nav class="desktop-menu">
                                    <ul>
                                        <li class="active"><a href="${contextPath}/">Home</a>
                                        </li>
                                        <li class="position-static"><a href="${contextpath}/shop">Shop<i
                                                class="fa fa-angle-down"></i></a>
                                            <ul class="megamenu dropdown">
                                                <li class="mega-title"><span>Category</span>
                                                    <c:forEach var="c" items="${categories}">
                                                        <ul>
                                                            <li><a href="${contextPath}/shop-categories/${c.id}">${c.cateName}</a></li>
                                                        </ul>
                                                    </c:forEach>
                                                </li>
                                                <li class="megamenu-banners d-none d-lg-block">
                                                    <a href="product-details.html">
                                                        <img src="${contextPath}/resources/home/assets/img/banner/img2-static-menu.jpg" alt="">
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        </li>
                                        <li><a href="${contextPath}/blog">Blog</a>
                                        </li>
                                        <li><a href="${contextPath}/contact-us">Contact us</a></li>
                                    </ul>
                                </nav>
                                <!-- main menu navbar end -->
                            </div>
                        </div>
                    </div>
                    <!-- main menu area end -->

                    <!-- mini cart area start -->
                    <div class="col-lg-4">
                        <div
                                class="header-right d-flex align-items-center justify-content-xl-between justify-content-lg-end">
                            <div class="header-search-container">
                                <button class="search-trigger d-xl-none d-lg-block"><i
                                        class="pe-7s-search"></i></button>
                                <form class="header-search-box d-lg-none d-xl-block" action="${contextPath}/search-name">
                                    <input name="keyword" type="text" placeholder="Search entire store hire"
                                           class="header-search-field">
                                    <button class="header-search-btn" onclick="submitSearchForm()"><i class="pe-7s-search"></i></button>
                                </form>
                            </div>
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end">
                                    <c:choose>
                                        <c:when test="${!empty sessionScope.fullName}">
                                            <li class="user-hover">
                                                <a href="#">
                                                    <i class="pe-7s-user"></i>
                                                </a>
                                                <ul class="dropdown-list">
                                                    <li>${sessionScope.fullName}</li><br>
                                                    <li><a href="${contextPath}/my-account" >my account</a></li>
                                                    <li><a href="${contextPath}/logout">Logout</a></li>

                                                </ul>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="user-hover">
                                                <a href="#">
                                                    <i class="pe-7s-user"></i>
                                                </a>
                                                <ul class="dropdown-list">
                                                    <li><a href="${contextPath}/dang-nhap">login</a></li>
                                                    <li><a href="${contextPath}/register">register</a></li>
                                                </ul>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                    <li>
                                        <c:choose>
                                            <c:when test="${sessionScope.id == null}">
                                                <a href="${contextPath}/dang-nhap">
                                                    <i class="pe-7s-like"></i>
                                                    <div class="notification">
                                                        <c:choose>
                                                            <c:when test="${sessionScope.id == null}">
                                                                0
                                                            </c:when>
                                                            <c:otherwise >
                                                                ${countWishlist}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </a>
                                            </c:when>
                                            <c:otherwise >
                                                <a href="${contextPath}/wishlist">
                                                    <i class="pe-7s-like"></i>
                                                    <div class="notification">
                                                        <c:choose>
                                                            <c:when test="${sessionScope.id == null}">
                                                                0
                                                            </c:when>
                                                            <c:otherwise >
                                                                ${countWishlist}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </a>
                                            </c:otherwise>
                                        </c:choose>

                                    </li>
                                    <li>
                                        <c:choose>
                                            <c:when test="${sessionScope.id == null}">
                                                <a href="${contextPath}/dang-nhap">
                                                    <i class="pe-7s-shopbag"></i>
                                                    <div class="notification">
                                                        <c:choose>
                                                            <c:when test="${sessionScope.id == null}">
                                                                0
                                                            </c:when>
                                                            <c:otherwise >
                                                                ${countCartItem}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </a>
                                            </c:when>
                                            <c:otherwise >
                                                <a href="${contextPath}/cart">
                                                    <i class="pe-7s-shopbag"></i>
                                                    <div class="notification">
                                                        <c:choose>
                                                            <c:when test="${sessionScope.id == null}">
                                                                0
                                                            </c:when>
                                                            <c:otherwise >
                                                                ${countCartItem}
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                </a>
                                            </c:otherwise>
                                        </c:choose>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- mini cart area end -->

                </div>
            </div>
        </div>
        <!-- header middle area end -->
    </div>
    <!-- main header start -->
</header>
<!-- end Header Area -->


<%--<main>--%>

    <c:if test="${!empty page}">
        <jsp:include page="home/${page}.jsp"></jsp:include>
    </c:if>
<%--</main>--%>

<!-- Scroll to top start -->
<div class="scroll-top not-visible">
    <i class="fa fa-angle-up"></i>
</div>
<!-- Scroll to Top End -->

<!-- footer area start -->
<footer class="footer-widget-area">
    <div class="footer-top section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="widget-item">
                        <div class="widget-title">
                            <div class="widget-logo">
                                <a href="index.html">
                                    <img src="${contextPath}/resources/home/assets/img/logo/logo.png" alt="brand logo">
                                </a>
                            </div>
                        </div>
                        <div class="widget-body">
                            <p>We are a team of designers and developers that create high quality wordpress,
                                shopify, Opencart </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="widget-item">
                        <h6 class="widget-title">Contact Us</h6>
                        <div class="widget-body">
                            <address class="contact-block">
                                <ul>
                                    <li><i class="pe-7s-home"></i> 4710-4890 Breckinridge USA</li>
                                    <li><i class="pe-7s-mail"></i> <a
                                            href="mailto:demo@plazathemes.com">demo@yourdomain.com </a></li>
                                    <li><i class="pe-7s-call"></i> <a href="tel:(012)800456789987">(012) 800 456
                                        789-987</a></li>
                                </ul>
                            </address>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="widget-item">
                        <h6 class="widget-title">Information</h6>
                        <div class="widget-body">
                            <ul class="info-list">
                                <li><a href="#">about us</a></li>
                                <li><a href="#">Delivery Information</a></li>
                                <li><a href="#">privet policy</a></li>
                                <li><a href="#">Terms & Conditions</a></li>
                                <li><a href="#">contact us</a></li>
                                <li><a href="#">site map</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="widget-item">
                        <h6 class="widget-title">Follow Us</h6>
                        <div class="widget-body social-link">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-youtube"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center mt-20">
                <div class="col-md-6">
                    <div class="newsletter-wrapper">
                        <h6 class="widget-title-text">Signup for newsletter</h6>
                        <form class="newsletter-inner" id="mc-form">
                            <input type="email" class="news-field" id="mc-email" autocomplete="off"
                                   placeholder="Enter your email address">
                            <button class="news-btn" id="mc-submit">Subscribe</button>
                        </form>
                        <!-- mail-chimp-alerts Start -->
                        <div class="mailchimp-alerts">
                            <div class="mailchimp-submitting"></div><!-- mail-chimp-submitting end -->
                            <div class="mailchimp-success"></div><!-- mail-chimp-success end -->
                            <div class="mailchimp-error"></div><!-- mail-chimp-error end -->
                        </div>
                        <!-- mail-chimp-alerts end -->
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="footer-payment">
                        <img src="${contextPath}/resources/home/assets/img/payment.png" alt="payment method">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="copyright-text text-center">
                        <p>&copy; 2022 <b>Corano</b> Made with <i class="fa fa-heart text-danger"></i> by <a
                                href="https://hasthemes.com/"><b>HasThemes</b></a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer area end -->

<!-- JS
============================================ -->

<!-- Modernizer JS -->
<script src="${contextPath}/resources/home/assets/js/vendor/modernizr-3.6.0.min.js"></script>
<!-- jQuery JS -->
<script src="${contextPath}/resources/home/assets/js/vendor/jquery-3.6.0.min.js"></script>
<!-- Bootstrap JS -->
<script src="${contextPath}/resources/home/assets/js/vendor/bootstrap.bundle.min.js"></script>
<!-- slick Slider JS -->
<script src="${contextPath}/resources/home/assets/js/plugins/slick.min.js"></script>
<!-- Countdown JS -->
<script src="${contextPath}/resources/home/assets/js/plugins/countdown.min.js"></script>
<!-- Nice Select JS -->
<script src="${contextPath}/resources/home/assets/js/plugins/nice-select.min.js"></script>
<!-- jquery UI JS -->
<script src="${contextPath}/resources/home/assets/js/plugins/jqueryui.min.js"></script>
<!-- Image zoom JS -->
<script src="${contextPath}/resources/home/assets/js/plugins/image-zoom.min.js"></script>
<!-- Images loaded JS -->
<script src="${contextPath}/resources/home/assets/js/plugins/imagesloaded.pkgd.min.js"></script>
<!-- mail-chimp active js -->
<script src="${contextPath}/resources/home/assets/js/plugins/ajaxchimp.js"></script>
<!-- contact form dynamic js -->
<script src="${contextPath}/resources/home/assets/js/plugins/ajax-mail.js"></script>
<!-- google map api -->
<%--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfmCVTjRI007pC1Yk2o2d_EhgkjTsFVN8"></script>--%>
<!-- google map active js -->
<script src="${contextPath}/resources/home/assets/js/plugins/google-map.js"></script>
<!-- Main JS -->
<script src="${contextPath}/resources/home/assets/js/main.js"></script>
</body>
</html>