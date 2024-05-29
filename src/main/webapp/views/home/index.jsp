<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- Start Slider Area -->
        <div class="axil-main-slider-area main-slider-style-7 bg_image--8">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-sm-8">
                        <div class="main-slider-content">
                            <span class="subtitle"><i class="fas fa-fire"></i>Hot Deal In Diamond</span>
                            <h1 class="title">Exclusive Design Collection</h1>
                            <p>Casual line with short design in 100% suede Diamond</p>
                            <div class="shop-btn">
                                <a href="shop.html" class="axil-btn btn-bg-secondary right-icon">Browse Item <i class="fal fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Slider Area -->

        <!-- Start Axil Product Poster Area  -->
        <div class="axil-poster axil-section-gap pb--0">
            <div class="container">
                <div class="row g-lg-5 g-4">
                    <div class="col-lg-6">
                        <div class="single-poster">
                            <a href="shop.html">
                                <img src="${contextPath}/home/assets/images/product/poster/poster-08.png" alt="eTrade promotion poster">
                                <div class="poster-content">
                                    <div class="inner">
                                        <h3 class="title">Premimum <br> Quality.</h3>
                                        <span class="sub-title">Collections <i class="fal fa-long-arrow-right"></i></span>
                                    </div>
                                </div>
                                <!-- End .poster-content -->
                            </a>
                        </div>
                        <!-- End .single-poster -->
                    </div>

                    <div class="col-lg-6">
                        <div class="single-poster">
                            <a href="shop-sidebar.html">
                                <img src="${contextPath}/home/assets/images/product/poster/poster-09.png" alt="eTrade promotion poster">
                                <div class="poster-content content-left">
                                    <div class="inner">
                                        <span class="sub-title">50% Offer In Winter</span>
                                        <h3 class="title">Get Exclusive <br> Diamond</h3>
                                    </div>
                                </div>
                                <!-- End .poster-content -->
                            </a>
                        </div>
                        <!-- End .single-poster -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End Axil Product Poster Area  -->
         <!-- Start Categorie Area  -->
        <div class="axil-categorie-area bg-color-white axil-section-gapcommon">
            <div class="container">
                <div class="section-title-wrapper">
                    <h2 class="title">Danh mục sản phẩm</h2>
                </div>
                <div class="categrie-product-activation slick-layout-wrapper--15 axil-slick-arrow  arrow-top-slide">

                	<c:forEach var="c" items="${categories}">
                		<div class="slick-single-layout">
                        <div class="categrie-product" data-sal="zoom-out" data-sal-delay="200" data-sal-duration="500" style="background-color:#4d4d4d">
                            <a href="${contextPath}/cua-hang?cateid=${c.id}">
                                <img class="img-fluid" src="${contextPath}/${c.image}" alt="product categorie">
                                <h6 class="cat-title">${c.cateName }</h6>
                            </a>
                        	</div>
                        	</div>
                	</c:forEach>

                        <!-- End .categrie-product -->

                </div>
            </div>
        </div>
        <!-- End Categorie Area  -->

        <!-- Start New Arrivals Product Area  -->
        <div class="axil-new-arrivals-product-area fullwidth-container bg-color-white axil-section-gap pb--0">
            <div class="container ml--xxl-0">
                <div class="product-area pb--50">
                    <div class="section-title-wrapper">
                        <h2 class="title">Hàng mới về</h2>
                    </div>
                    <div class="new-arrivals-product-activation slick-layout-wrapper--15 axil-slick-arrow  arrow-top-slide">
                    <c:forEach var="p" items="${getByDate }">

                    	<div class="slick-single-layout">
                            <div class="axil-product product-style-four">
                                <div class="thumbnail">
                                    <a href="${contextPath}/chi-tiet?id=${p.productId}">
                                        <img data-sal="fade" data-sal-delay="100" data-sal-duration="1500" src="${contextPath}/${p.image}" alt="Product Images">
                                    </a>
                                    <div class="product-hover-action">
                                        <ul class="cart-action">
                                            <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                            <li class="select-option"><a href="" onclick="addCart('${p.productId}')">Thêm vào giỏ hàng</a></li>
                                            <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="inner">
                                        <h5 class="title"><a href="${contextPath}/chi-tiet?id=${p.productId}">${p.productName }</a></h5>
                                        <div class="product-price-variant">
                                            <span class="price old-price"><span>$</span><fmt:formatNumber>${p.priceOld }</fmt:formatNumber></span>
                                            <span class="price current-price"><span>$</span><fmt:formatNumber>${p.price }</fmt:formatNumber></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!-- End New Arrivals Product Area  -->




        <!-- Start Expolre Product Area  -->
        <div class="axil-product-area bg-color-white axil-section-gap pb--0">
            <div class="container">
                <div class="product-area pb--80">
                    <div class="section-title-wrapper">
                        <h2 class="title">Khám phá sản phẩm</h2>
                    </div>
                    <div class="row row--15">
                    <c:forEach items="${products}" var="p">
                    	<div class="col-xl-3 col-lg-4 col-sm-6 col-12 mb--30">
                            <div class="axil-product product-style-one">
                                <div class="thumbnail">
                                    <a href="single-product.html">
                                        <img data-sal="fade" data-sal-delay="100" data-sal-duration="1500" src="${contextPath}/resources/images/${p.image}" alt="Product Images">
                                    </a>
                                    <div class="product-hover-action">
                                        <ul class="cart-action">
                                            <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                            <li class="select-option"><a href="" onclick="addCart('${p.id}')">Thêm giỏ hàng</a></li>
                                            <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <div class="inner">
                                        <h5 class="title"><a href="${contextPath}/chi-tiet/${p.id}">${p.productName}</a></h5>
                                        <div class="product-price-variant">
                                            <span class="price old-price"><span>$</span><fmt:formatNumber>${p.priceOld}</fmt:formatNumber></span>
                                            <span class="price current-price"><span>$</span><fmt:formatNumber>${p.price}</fmt:formatNumber></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>

                    </div>
                    <div class="row">
                        <div class="col-lg-12 text-center mt--20 mt_sm--0">
                            <a href="${contextPath}/cua-hang" class="axil-btn btn-bg-lighter btn-load-more">Hiển thị tất cả</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Expolre Product Area  -->




