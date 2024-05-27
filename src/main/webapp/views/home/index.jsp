<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->
<a href="#top" class="back-to-top" id="backto-top"><i class="fal fa-arrow-up"></i></a>
<!-- Start Header -->
<header class="header axil-header header-style-4">
    <!-- Start Header Top Area  -->
    <div class="axil-header-top">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-4 col-12">
                    <div class="header-top-dropdown dropdown-box-style">
                        <div class="dropdown">
                            <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                USD
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">USD</a></li>
                                <li><a class="dropdown-item" href="#">AUD</a></li>
                                <li><a class="dropdown-item" href="#">EUR</a></li>
                            </ul>
                        </div>
                        <div class="dropdown">
                            <button class="dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                EN
                            </button>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">EN</a></li>
                                <li><a class="dropdown-item" href="#">ARB</a></li>
                                <li><a class="dropdown-item" href="#">SPN</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-5">
                    <div class="header-brand">
                        <a href="index.html" class="logo logo-dark">
                            <img src="${contextPath}/resources/home/assets/images/logo/logo.png" alt="Site Logo">
                        </a>
                        <a href="index.html" class="logo logo-light">
                            <img src="${contextPath}/resources/home/assets/images/logo/logo-light.png" alt="Site Logo">
                        </a>
                    </div>
                </div>
                <div class="col-md-4 col-7">
                    <div class="header-action">
                        <ul class="action-list">
                            <li class="axil-search">
                                <div class="card-header">
                                    <form action="${contextPath}/cua-hang" method="post">
                                        <div class="input-group  align-items-center">
                                            <input type="text"  class="form-control" name="name" id="prod-search" placeholder="Write Something....">
                                            <a type="submit" class="axil-btn btn-bg-primary" style="padding: 12px"><i class="far fa-search" ></i></a>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <li class="wishlist">
                                <a href="wishlist.html">
                                    <i class="flaticon-heart"></i>
                                </a>
                            </li>
                            <li class="shopping-cart">
                                <a href="${contextPath}/gio-hang" class="cart-btn">
                                    <span class="cart-count" id="basket_total"><jsp:include page="${contextPath}/countItems"></jsp:include></span>
                                    <i class="flaticon-shopping-cart"></i>
                                </a>
                            </li>
                            <c:choose>
                                <c:when test="${!empty sessionScope.id }">

                                    <li class="my-account">
                                        <a href="javascript:void(0)">
                                            <i class="flaticon-person"></i>

                                        </a>

                                        <div class="my-account-dropdown">
                                            <ul>
                                                <li>
                                                    <img alt="" src="${contextPath }/${picture}" width="40px" style="border-radius: 90%" class="flaticon-person">
                                                    <p>Xin chào ${fullName}</p>

                                                </li>
                                                <li>
                                                    <a href="cai-dat/${id}" class=" btn-bg-primary">Quản lý tài khoản</a>
                                                </li>
                                                <li>
                                                    <a href="logout" class=" btn-bg-primary">Đăng xuất</a>
                                                </li>
                                            </ul>

                                            <!-- <div class="reg-footer text-center">No account yet? <a href="sign-up.html" class="btn-link">REGISTER HERE.</a></div>-->
                                        </div>
                                    </li>
                                </c:when>

                                <c:otherwise>

                                    <li class="my-account">
                                        <a href="javascript:void(0)">
                                            <i class="flaticon-person"></i>
                                        </a>
                                        <div class="my-account-dropdown">
                                            <ul>
                                                <li>
                                                    <a href="dang-nhap" class=" btn-bg-primary">Đăng Nhập</a>
                                                </li>
                                                <li>
                                                    <a href="sign-in.html" class=" btn-bg-primary">Đăng Ký</a>
                                                </li>
                                            </ul>

                                            <!-- <div class="reg-footer text-center">No account yet? <a href="sign-up.html" class="btn-link">REGISTER HERE.</a></div>-->
                                        </div>
                                    </li>
                                </c:otherwise>
                            </c:choose>

                            <li class="axil-mobile-toggle">
                                <button class="menu-btn mobile-nav-toggler">
                                    <i class="flaticon-menu-2"></i>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top Area  -->

    <!-- Start Mainmenu Area  -->
    <div id="axil-sticky-placeholder"></div>
    <div class="axil-mainmenu">
        <div class="container">
            <div class="header-navbar">
                <div class="header-main-nav">
                    <!-- Start Mainmanu Nav -->
                    <nav class="mainmenu-nav">
                        <button class="mobile-close-btn mobile-nav-toggler"><i class="fas fa-times"></i></button>
                        <div class="mobile-nav-brand">
                            <a href="index.html" class="logo">
                                <img src="${contextPath}/resources/home/assets/images/logo/logo.png" alt="Site Logo">
                            </a>
                        </div>
                        <ul class="mainmenu">
                            <li class="menu-item">
                                <a href="trang-chu">Trang chủ</a>
                            </li>
                            <li class="menu-item">
                                <a href="cua-hang">Cửa hàng</a>
                            </li>
                            <li><a href="gioi-thieu">Giới thiệu</a></li>
                            <li class="menu-item">
                                <a href="bai-viet">Bài viết</a>
                            </li>
                            <li><a href="lien-he">Liên hệ</a></li>
                        </ul>
                    </nav>
                    <!-- End Mainmanu Nav -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Mainmenu Area  -->
</header>

<main class="main-wrapper">
    <c:if test="${!empty page}">
        <jsp:include page="home/${page}.jsp"></jsp:include>
    </c:if>

    <!-- Start Axil Newsletter Area  -->
    <div class="axil-newsletter-area axil-section-gap pt--0">
        <div class="container">
            <div class="etrade-newsletter-wrapper bg_image bg_image--11">
                <div class="newsletter-content">
                    <h2 class="title mb--40 mb_sm--30">Nhận thông tin mới nhất</h2>
                    <div class="input-group newsletter-form">
                        <div class="position-relative newsletter-inner mb--15">
                            <input placeholder="example@gmail.com" type="text">
                        </div>
                        <button type="submit" class="axil-btn mb--15">Subscribe</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- End .container -->
    </div>
    <!-- End Axil Newsletter Area  -->
</main>


<div class="service-area">
    <div class="container">
        <div class="row row-cols-xl-4 row-cols-sm-2 row-cols-1 row--20">
            <div class="col">
                <div class="service-box service-style-2">
                    <div class="icon">
                        <img src="${contextPath}/resources/home/assets/images/icons/service1.png" alt="Service">
                    </div>
                    <div class="content">
                        <h6 class="title">Giao hàng nhanh & an toàn</h6>
                        <p>Nói về dịch vụ của bạn.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="service-box service-style-2">
                    <div class="icon">
                        <img src="${contextPath}/resources/home/assets/images/icons/service2.png" alt="Service">
                    </div>
                    <div class="content">
                        <h6 class="title">Bảo đảm hoàn tiền</h6>
                        <p>Trong vào 10 ngày.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="service-box service-style-2">
                    <div class="icon">
                        <img src="${contextPath}/resources/home/assets/images/icons/service3.png" alt="Service">
                    </div>
                    <div class="content">
                        <h6 class="title">Chính sách hoàn trả 24h</h6>
                        <p>Dẽ dàng.</p>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="service-box service-style-2">
                    <div class="icon">
                        <img src="${contextPath}/resources/home/assets/images/icons/service4.png" alt="Service">
                    </div>
                    <div class="content">
                        <h6 class="title">Hỗ trợ chuyên nghiệp</h6>
                        <p>Hỗ trợ 24/7.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start Footer Area  -->
<footer class="axil-footer-area footer-style-2">
    <!-- Start Footer Top Area  -->
    <div class="footer-top separator-top">
        <div class="container">
            <div class="row">
                <!-- Start Single Widget  -->
                <div class="col-lg-3 col-sm-6">
                    <div class="axil-footer-widget">
                        <h5 class="widget-title">Hỗ trợ</h5>
                        <div class="inner">
                            <p>685 Market Street, <br>
                                Las Vegas, LA 95820, <br>
                                United States.
                            </p>
                            <ul class="support-list-item">
                                <li><a href="mailto:example@domain.com"><i class="fal fa-envelope-open"></i> example@domain.com</a></li>
                                <li><a href="tel:(+01)850-315-5862"><i class="fal fa-phone-alt"></i> (+01) 850-315-5862</a></li>
                                <!-- <li><i class="fal fa-map-marker-alt"></i> 685 Market Street,  <br> Las Vegas, LA 95820, <br> United States.</li> -->
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Single Widget  -->
                <!-- Start Single Widget  -->
                <div class="col-lg-3 col-sm-6">
                    <div class="axil-footer-widget">
                        <h5 class="widget-title">Tài khoản</h5>
                        <div class="inner">
                            <ul>
                                <li><a href="my-account.html">Tài khoản của tôi</a></li>
                                <li><a href="sign-up.html">Đăng nhập / Đăng ký</a></li>
                                <li><a href="cart.html">Giỏ hàng</a></li>
                                <li><a href="wishlist.html">Yêu thích</a></li>
                                <li><a href="shop.html">Cửa hàng</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Single Widget  -->
                <!-- Start Single Widget  -->
                <div class="col-lg-3 col-sm-6">
                    <div class="axil-footer-widget">
                        <h5 class="widget-title">Truy cập nhanh</h5>
                        <div class="inner">
                            <ul>
                                <li><a href="privacy-policy.html">Chính sách bảo mật</a></li>
                                <li><a href="terms-of-service.html">Điều khoản dịch vụ</a></li>
                                <li><a href="#">Câu hỏi thường gặp</a></li>
                                <li><a href="contact.html">Liên hệ</a></li>
                                <li><a href="contact.html">Giới thiệu</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Single Widget  -->
                <!-- Start Single Widget  -->
                <div class="col-lg-3 col-sm-6">
                    <div class="axil-footer-widget">
                        <h5 class="widget-title">Tải ứng dụng</h5>
                        <div class="inner">
                            <span>Tiết kiệm 3$ với App & Người mới</span>
                            <div class="download-btn-group">
                                <div class="qr-code">
                                    <img src="${contextPath}/resources/home/assets/images/others/qr.png" alt="Axilthemes">
                                </div>
                                <div class="app-link">
                                    <a href="#">
                                        <img src="${contextPath}/resources/home/assets/images/others/app-store.png" alt="App Store">
                                    </a>
                                    <a href="#">
                                        <img src="${contextPath}/resources/home/assets/images/others/play-store.png" alt="Play Store">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Widget  -->
            </div>
        </div>
    </div>
    <!-- End Footer Top Area  -->
    <!-- Start Copyright Area  -->
    <div class="copyright-area copyright-default separator-top">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-4">
                    <div class="social-share">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        <a href="#"><i class="fab fa-discord"></i></a>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-12">
                    <div class="copyright-left d-flex flex-wrap justify-content-center">
                        <ul class="quick-link">
                            <li>© 2023. All rights reserved by <a target="_blank" href="https://axilthemes.com/">Axilthemes</a>.</li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-12">
                    <div class="copyright-right d-flex flex-wrap justify-content-xl-end justify-content-center align-items-center">
                        <span class="card-text">Accept For</span>
                        <ul class="payment-icons-bottom quick-link">
                            <li><img src="${contextPath}/resources/home/assets/images/icons/cart/cart-1.png" alt="paypal cart"></li>
                            <li><img src="${contextPath}/resources/home/assets/images/icons/cart/cart-2.png" alt="paypal cart"></li>
                            <li><img src="${contextPath}/resources/home/assets/images/icons/cart/cart-5.png" alt="paypal cart"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Copyright Area  -->
</footer>
<!-- End Footer Area  -->

<!-- Product Quick View Modal Start -->
<div class="modal fade quick-view-product" id="quick-view-modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><i class="far fa-times"></i></button>
            </div>
            <div class="modal-body">
                <div class="single-product-thumb">
                    <div class="row">
                        <div class="col-lg-7 mb--40">
                            <div class="row">
                                <div class="col-lg-10 order-lg-2">
                                    <div class="single-product-thumbnail product-large-thumbnail axil-product thumbnail-badge zoom-gallery">
                                        <div class="thumbnail">
                                            <img src="${contextPath}/resources/home/assets/images/product/product-big-01.png" alt="Product Images">
                                            <div class="label-block label-right">
                                                <div class="product-badget">20% OFF</div>
                                            </div>
                                            <div class="product-quick-view position-view">
                                                <a href="${contextPath}/resources/home/assets/images/product/product-big-01.png" class="popup-zoom">
                                                    <i class="far fa-search-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumbnail">
                                            <img src="${contextPath}/resources/home/assets/images/product/product-big-02.png" alt="Product Images">
                                            <div class="label-block label-right">
                                                <div class="product-badget">20% OFF</div>
                                            </div>
                                            <div class="product-quick-view position-view">
                                                <a href="${contextPath}/resources/home/assets/images/product/product-big-02.png" class="popup-zoom">
                                                    <i class="far fa-search-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="thumbnail">
                                            <img src="${contextPath}/resources/home/assets/images/product/product-big-03.png" alt="Product Images">
                                            <div class="label-block label-right">
                                                <div class="product-badget">20% OFF</div>
                                            </div>
                                            <div class="product-quick-view position-view">
                                                <a href="${contextPath}/resources/home/assets/images/product/product-big-03.png" class="popup-zoom">
                                                    <i class="far fa-search-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-2 order-lg-1">
                                    <div class="product-small-thumb small-thumb-wrapper">
                                        <div class="small-thumb-img">
                                            <img src="${contextPath}/resources/home/assets/images/product/product-thumb/thumb-08.png" alt="thumb image">
                                        </div>
                                        <div class="small-thumb-img">
                                            <img src="${contextPath}/resources/home/assets/images/product/product-thumb/thumb-07.png" alt="thumb image">
                                        </div>
                                        <div class="small-thumb-img">
                                            <img src="${contextPath}/resources/home/assets/images/product/product-thumb/thumb-09.png" alt="thumb image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5 mb--40">
                            <div class="single-product-content">
                                <div class="inner">
                                    <div class="product-rating">
                                        <div class="star-rating">
                                            <img src="${contextPath}/resources/home/assets/images/icons/rate.png" alt="Rate Images">
                                        </div>
                                        <div class="review-link">
                                            <a href="#">(<span>1</span> customer reviews)</a>
                                        </div>
                                    </div>
                                    <h3 class="product-title">Serif Coffee Table</h3>
                                    <span class="price-amount">$155.00 - $255.00</span>
                                    <ul class="product-meta">
                                        <li><i class="fal fa-check"></i>In stock</li>
                                        <li><i class="fal fa-check"></i>Free delivery available</li>
                                        <li><i class="fal fa-check"></i>Sales 30% Off Use Code: MOTIVE30</li>
                                    </ul>
                                    <p class="description">In ornare lorem ut est dapibus, ut tincidunt nisi pretium. Integer ante est, elementum eget magna. Pellentesque sagittis dictum libero, eu dignissim tellus.</p>

                                    <div class="product-variations-wrapper">

                                        <!-- Start Product Variation  -->
                                        <div class="product-variation">
                                            <h6 class="title">Colors:</h6>
                                            <div class="color-variant-wrapper">
                                                <ul class="color-variant mt--0">
                                                    <li class="color-extra-01 active"><span><span class="color"></span></span>
                                                    </li>
                                                    <li class="color-extra-02"><span><span class="color"></span></span>
                                                    </li>
                                                    <li class="color-extra-03"><span><span class="color"></span></span>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <!-- End Product Variation  -->

                                        <!-- Start Product Variation  -->
                                        <div class="product-variation">
                                            <h6 class="title">Size:</h6>
                                            <ul class="range-variant">
                                                <li>xs</li>
                                                <li>s</li>
                                                <li>m</li>
                                                <li>l</li>
                                                <li>xl</li>
                                            </ul>
                                        </div>
                                        <!-- End Product Variation  -->

                                    </div>

                                    <!-- Start Product Action Wrapper  -->
                                    <div class="product-action-wrapper d-flex-center">
                                        <!-- Start Quentity Action  -->
                                        <div class="pro-qty"><input type="text" value="1"></div>
                                        <!-- End Quentity Action  -->

                                        <!-- Start Product Action  -->
                                        <ul class="product-action d-flex-center mb--0">
                                            <li class="add-to-cart"><a href="cart.html" class="axil-btn btn-bg-primary">Add to Cart</a></li>
                                            <li class="wishlist"><a href="wishlist.html" class="axil-btn wishlist-btn"><i class="far fa-heart"></i></a></li>
                                        </ul>
                                        <!-- End Product Action  -->

                                    </div>
                                    <!-- End Product Action Wrapper  -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product Quick View Modal End -->

<!-- Header Search Modal End -->





============================================ -->
<!-- Modernizer JS -->
<script src="${contextPath}/resources/home/assets/js/vendor/modernizr.min.js"></script>
<!-- jQuery JS -->
<script src="${contextPath}/resources/home/assets/js/vendor/jquery.js"></script>
<!-- Bootstrap JS -->
<script src="${contextPath}/resources/home/assets/js/vendor/popper.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/bootstrap.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/slick.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/js.cookie.js"></script>
<!-- <script src="${contextPath}/resources/home/assets/js/vendor/jquery.style.switcher.js"></script> -->
<script src="${contextPath}/resources/home/assets/js/vendor/jquery-ui.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/jquery.ui.touch-punch.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/jquery.countdown.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/sal.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/jquery.magnific-popup.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/imagesloaded.pkgd.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/isotope.pkgd.min.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/counterup.js"></script>
<script src="${contextPath}/resources/home/assets/js/vendor/waypoints.min.js"></script>

<!-- Main JS -->
<script src="${contextPath}/resources/home/assets/js/main.js"></script>
<%--<script>--%>
<%--    var path='${pageContext.servletContext.contextPath}';--%>
<%--</script>--%>
<script type="text/javascript" src="${contextPath}/resources/home/assets//js/home.js"></script>

</body>
