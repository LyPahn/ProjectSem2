<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<main class="main-wrapper">
    <!-- Start Shop Area  -->
    <div class="axil-single-product-area bg-color-white">
        <div class="single-product-thumb axil-section-gap pb--20 pb_sm--0 bg-vista-white">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mb--40">
                        <div class="row">
                            <div class="col-lg-10 order-lg-2">
                                <div class="single-product-thumbnail-wrap zoom-gallery">
                                    <div class="product-large-thumbnail single-product-thumbnail axil-product">
                                        <c:forEach var="p" items="${product.images}">
                                            <div class="thumbnail">
                                                <a href="assets/images/product/product-big-04.png" class="popup-zoom">
                                                    <img src="${contextPath}/resources/images/${p.image}" alt="Product Images">
                                                </a>
                                            </div>
                                        </c:forEach>
                                    </div>
                                    <div class="label-block">
                                        <div class="product-badget">20% OFF</div>
                                    </div>
                                    <div class="product-quick-view position-view">
                                        <a href="assets/images/product/product-big-04.png" class="popup-zoom">
                                            <i class="far fa-search-plus"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-2 order-lg-1">
                                <div class="product-small-thumb small-thumb-wrapper small-thumb-style-two">
                                    <c:forEach var="p" items="${product.images}">
                                        <div class="small-thumb-img">
                                            <img src="${contextPath}/resources/images/${p.image}" alt="thumb image">
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb--40">
                        <div class="single-product-content">
                            <div class="inner">
                                <h2 class="product-title">${product.productName}</h2>
                                <span class="price-amount">$155.00 - $255.00</span>
                                <div class="product-rating">
                                    <div class="star-rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    <div class="review-link">
                                        <a href="#">(<span>2</span> customer reviews)</a>
                                    </div>
                                </div>
                                <ul class="product-meta">
                                    <li><i class="fal fa-check"></i>In stock</li>
                                    <li><i class="fal fa-check"></i>Free delivery available</li>
                                    <li><i class="fal fa-check"></i>Sales 30% Off Use Code: MOTIVE30</li>
                                </ul>
                                <p class="description">In ornare lorem ut est dapibus, ut tincidunt nisi pretium. Integer ante est, hendrerit in rutrum quis, elementum eget magna. Pellentesque sagittis dictum libero, eu dignissim tellus.</p>

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
                                    <div class="product-variation product-size-variation">
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
                                    <div class="pro-qty mr--20"><input type="text" value="1"></div>
                                    <!-- End Quentity Action  -->

                                    <!-- Start Product Action  -->
                                    <ul class="product-action d-flex-center mb--0">
                                        <li class="add-to-cart"><a href="cart.html" class="axil-btn btn-bg-primary">Add to Cart</a></li>
                                        <li class="wishlist"><a href="wishlist.html" class="axil-btn wishlist-btn"><i class="far fa-heart"></i></a></li>
                                    </ul>
                                    <!-- End Product Action  -->

                                </div>
                                <!-- End Product Action Wrapper  -->

                                <div class="product-desc-wrapper pt--80 pt_sm--60">
                                    <h4 class="primary-color mb--40 desc-heading">Description</h4>
                                    <div class="single-desc mb--30">
                                        <h5 class="title">Specifications:</h5>
                                        <p>We’ve created a full-stack structure for our working workflow processes, were from the funny the century initial all the made, have spare to negatives. But the structure was from the funny the century rather,
                                            initial all the made, have spare to negatives.</p>
                                    </div>
                                    <div class="single-desc mb--5">
                                        <h5 class="title">Care & Maintenance:</h5>
                                        <p>Use warm water to describe us as a product team that creates amazing UI/UX experiences, by crafting top-notch user experience.</p>
                                    </div>
                                    <ul class="pro-des-features pro-desc-style-two pt-10">
                                        <li class="single-features">
                                            <div class="icon">
                                                <img src="assets/images/product/product-thumb/icon-3.png" alt="icon">
                                            </div>
                                            Easy Returns
                                        </li>
                                        <li class="single-features">
                                            <div class="icon">
                                                <img src="assets/images/product/product-thumb/icon-2.png" alt="icon">
                                            </div>
                                            Quality Service
                                        </li>
                                        <li class="single-features">
                                            <div class="icon">
                                                <img src="assets/images/product/product-thumb/icon-1.png" alt="icon">
                                            </div>
                                            Original Product
                                        </li>
                                    </ul>
                                    <!-- End .pro-des-features -->
                                </div>
                                <!-- End .product-desc-wrapper -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End .single-product-thumb -->

    </div>
    <!-- End Shop Area  -->

    <!-- Start Recently Viewed Product Area  -->
    <div class="axil-product-area bg-color-white axil-section-gap pb--50 pb_sm--30">
        <div class="container">
            <div class="section-title-wrapper">
                <span class="title-highlighter highlighter-primary"><i class="far fa-shopping-basket"></i> Your Recently</span>
                <h2 class="title">Viewed Items</h2>
            </div>
            <div class="recent-product-activation slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">
                <div class="slick-single-layout">
                    <div class="axil-product">
                        <div class="thumbnail">
                            <a href="single-product.html">
                                <img src="assets/images/product/electric/product-01.png" alt="Product Images">
                            </a>
                            <div class="label-block label-right">
                                <div class="product-badget">20% OFF</div>
                            </div>
                            <div class="product-hover-action">
                                <ul class="cart-action">
                                    <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                    <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                    <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="inner">
                                <h5 class="title"><a href="single-product.html">3D™ wireless headset</a></h5>
                                <div class="product-price-variant">
                                    <span class="price old-price">$30</span>
                                    <span class="price current-price">$30</span>
                                </div>
                                <div class="color-variant-wrapper">
                                    <ul class="color-variant">
                                        <li class="color-extra-01 active"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-02"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-03"><span><span class="color"></span></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .slick-single-layout -->
                <div class="slick-single-layout">
                    <div class="axil-product">
                        <div class="thumbnail">
                            <a href="single-product.html">
                                <img src="assets/images/product/electric/product-02.png" alt="Product Images">
                            </a>
                            <div class="label-block label-right">
                                <div class="product-badget">40% OFF</div>
                            </div>
                            <div class="product-hover-action">
                                <ul class="cart-action">
                                    <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                    <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                    <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="inner">
                                <h5 class="title"><a href="single-product.html">Media remote</a></h5>
                                <div class="product-price-variant">
                                    <span class="price old-price">$80</span>
                                    <span class="price current-price">$50</span>
                                </div>
                                <div class="color-variant-wrapper">
                                    <ul class="color-variant">
                                        <li class="color-extra-01 active"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-02"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-03"><span><span class="color"></span></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .slick-single-layout -->
                <div class="slick-single-layout">
                    <div class="axil-product">
                        <div class="thumbnail">
                            <a href="single-product.html">
                                <img src="assets/images/product/electric/product-03.png" alt="Product Images">
                            </a>
                            <div class="label-block label-right">
                                <div class="product-badget">30% OFF</div>
                            </div>
                            <div class="product-hover-action">
                                <ul class="cart-action">
                                    <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                    <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                    <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="inner">
                                <h5 class="title"><a href="single-product.html">HD camera</a></h5>
                                <div class="product-price-variant">
                                    <span class="price old-price">$60</span>
                                    <span class="price current-price">$45</span>
                                </div>
                                <div class="color-variant-wrapper">
                                    <ul class="color-variant">
                                        <li class="color-extra-01 active"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-02"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-03"><span><span class="color"></span></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .slick-single-layout -->
                <div class="slick-single-layout">
                    <div class="axil-product">
                        <div class="thumbnail">
                            <a href="single-product.html">
                                <img src="assets/images/product/electric/product-04.png" alt="Product Images">
                            </a>
                            <div class="label-block label-right">
                                <div class="product-badget">50% OFF</div>
                            </div>
                            <div class="product-hover-action">
                                <ul class="cart-action">
                                    <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                    <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                    <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="inner">
                                <h5 class="title"><a href="single-product.html">PS Remote Control</a></h5>
                                <div class="product-price-variant">
                                    <span class="price old-price">$70</span>
                                    <span class="price current-price">$35</span>
                                </div>
                                <div class="color-variant-wrapper">
                                    <ul class="color-variant">
                                        <li class="color-extra-01 active"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-02"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-03"><span><span class="color"></span></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .slick-single-layout -->
                <div class="slick-single-layout">
                    <div class="axil-product">
                        <div class="thumbnail">
                            <a href="single-product.html">
                                <img src="assets/images/product/electric/product-05.png" alt="Product Images">
                            </a>
                            <div class="label-block label-right">
                                <div class="product-badget">25% OFF</div>
                            </div>
                            <div class="product-hover-action">
                                <ul class="cart-action">
                                    <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                    <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                    <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="inner">
                                <h5 class="title"><a href="single-product.html">PS Remote Control</a></h5>
                                <div class="product-price-variant">
                                    <span class="price old-price">$50</span>
                                    <span class="price current-price">$38</span>
                                </div>
                                <div class="color-variant-wrapper">
                                    <ul class="color-variant">
                                        <li class="color-extra-01 active"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-02"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-03"><span><span class="color"></span></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .slick-single-layout -->
                <!-- End .slick-single-layout -->
                <div class="slick-single-layout">
                    <div class="axil-product">
                        <div class="thumbnail">
                            <a href="single-product.html">
                                <img src="assets/images/product/electric/product-03.png" alt="Product Images">
                            </a>
                            <div class="label-block label-right">
                                <div class="product-badget">30% OFF</div>
                            </div>
                            <div class="product-hover-action">
                                <ul class="cart-action">
                                    <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                    <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                    <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="inner">
                                <h5 class="title"><a href="single-product.html">HD camera</a></h5>
                                <div class="product-price-variant">
                                    <span class="price old-price">$60</span>
                                    <span class="price current-price">$45</span>
                                </div>
                                <div class="color-variant-wrapper">
                                    <ul class="color-variant">
                                        <li class="color-extra-01 active"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-02"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-03"><span><span class="color"></span></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .slick-single-layout -->
                <div class="slick-single-layout">
                    <div class="axil-product">
                        <div class="thumbnail">
                            <a href="single-product.html">
                                <img src="assets/images/product/electric/product-04.png" alt="Product Images">
                            </a>
                            <div class="label-block label-right">
                                <div class="product-badget">50% OFF</div>
                            </div>
                            <div class="product-hover-action">
                                <ul class="cart-action">
                                    <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                    <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                    <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="inner">
                                <h5 class="title"><a href="single-product.html">PS Remote Control</a></h5>
                                <div class="product-price-variant">
                                    <span class="price old-price">$70</span>
                                    <span class="price current-price">$35</span>
                                </div>
                                <div class="color-variant-wrapper">
                                    <ul class="color-variant">
                                        <li class="color-extra-01 active"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-02"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-03"><span><span class="color"></span></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .slick-single-layout -->
                <div class="slick-single-layout">
                    <div class="axil-product">
                        <div class="thumbnail">
                            <a href="single-product.html">
                                <img src="assets/images/product/electric/product-05.png" alt="Product Images">
                            </a>
                            <div class="label-block label-right">
                                <div class="product-badget">25% OFF</div>
                            </div>
                            <div class="product-hover-action">
                                <ul class="cart-action">
                                    <li class="wishlist"><a href="wishlist.html"><i class="far fa-heart"></i></a></li>
                                    <li class="select-option"><a href="cart.html">Add to Cart</a></li>
                                    <li class="quickview"><a href="#" data-bs-toggle="modal" data-bs-target="#quick-view-modal"><i class="far fa-eye"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-content">
                            <div class="inner">
                                <h5 class="title"><a href="single-product.html">PS5 Remote Control</a></h5>
                                <div class="product-price-variant">
                                    <span class="price old-price">$50</span>
                                    <span class="price current-price">$38</span>
                                </div>
                                <div class="color-variant-wrapper">
                                    <ul class="color-variant">
                                        <li class="color-extra-01 active"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-02"><span><span class="color"></span></span>
                                        </li>
                                        <li class="color-extra-03"><span><span class="color"></span></span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .slick-single-layout -->

            </div>
        </div>
    </div>
    <!-- End Recently Viewed Product Area  -->
    <!-- Start Axil Newsletter Area  -->
    <div class="axil-newsletter-area axil-section-gap pt--0">
        <div class="container">
            <div class="etrade-newsletter-wrapper bg_image bg_image--5">
                <div class="newsletter-content">
                    <span class="title-highlighter highlighter-primary2"><i class="fas fa-envelope-open"></i>Newsletter</span>
                    <h2 class="title mb--40 mb_sm--30">Get weekly update</h2>
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
<%--<main class="main-wrapper">--%>
<%--        <!-- Start Shop Area  -->--%>
<%--        <div class="axil-single-product-area bg-color-white">--%>
<%--            <div class="single-product-thumb axil-section-gap pb--30 pb_sm--20">--%>
<%--                <div class="container">--%>
<%--                    <div class="row row--50">--%>
<%--                        <div class="col-lg-6 mb--40">--%>
<%--                            <div class="h-100">--%>
<%--                                <div class="position-sticky sticky-top">--%>
<%--                                    <div class="single-product-thumbnail axil-product">--%>
<%--                                        <div class="thumbnail">--%>
<%--                                            <img src="${contextPath}/resources/images/${product.image}" alt="Product Images">--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-6 mb--40">--%>
<%--                            <div class="h-100">--%>
<%--                                <div class="position-sticky sticky-top">--%>
<%--                                    <div class="single-product-content nft-single-product-content">--%>
<%--                                        <div class="inner">--%>
<%--                                            <h2 class="product-title">${product.productName}</h2>--%>
<%--                                            <div class="price-amount price-offer-amount">--%>
<%--                                                <span class="price current-price"><span>$</span>${product.price}</span>--%>
<%--                                            </div>--%>

<%--                                            <!-- Start Product Action Wrapper  -->--%>
<%--                                            <div class="product-action-wrapper d-flex-center">--%>

<%--                                                <!-- Start Product Action  -->--%>
<%--                                                <ul class="product-action action-style-two d-flex-center mb--0">--%>
<%--                                                    <li class="add-to-cart"><a href="#" class="axil-btn btn-bg-primary">Mua ngay</a></li>--%>
<%--                                                </ul>--%>
<%--                                                <!-- End Product Action  -->--%>
<%--                                            </div>--%>

<%--                                            <div class="nft-short-meta">--%>
<%--                                                <div class="row align-items-center">--%>
<%--                                                    <div class="col-md-6">--%>
<%--                                                        <div class="nft-category">--%>
<%--                                                            <label>Category :</label>--%>
<%--                                                            <div class="category-list">--%>
<%--                                                                <a href="${contextPath}/cua-hang?cateid=${product.categoryId}">${product.category.cateName}</a>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                    <div class="col-md-6">--%>
<%--                                                        <div class="nft-verified-option">--%>
<%--                                                            <label>Is this item Authentic?</label>--%>
<%--                                                            <button class="verify-btn axil-btn btn-bg-secondary">Verifiy</button>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>

<%--                                            <div class="woocommerce-tabs wc-tabs-wrapper bg-vista-white nft-info-tabs">--%>
<%--                                                <div class="container">--%>
<%--                                                    <ul class="nav tabs" id="myTab" role="tablist">--%>
<%--                                                        <li class="nav-item" role="presentation">--%>
<%--                                                            <a class="active" id="description-tab" data-bs-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>--%>
<%--                                                        </li>--%>
<%--                                                        --%>
<%--                                                    </ul>--%>
<%--                                                    <div class="tab-content" id="myTabContent">--%>
<%--                                                        <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">--%>
<%--                                                            <div class="product-additional-info">--%>
<%--                                                                ${product.description}--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="tab-pane fade" id="additional-info" role="tabpanel" aria-labelledby="additional-info-tab">--%>
<%--                                                            <div class="product-additional-info">--%>
<%--                                                                <div class="table-responsive">--%>
<%--                                                                    <table>--%>
<%--                                                                        <tbody>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Brand</th>--%>
<%--                                                                                <td>eTrade</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Collection </th>--%>
<%--                                                                                <td>eTrade Capsules</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Creator</th>--%>
<%--                                                                                <td>Arnold Ray</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Gen</th>--%>
<%--                                                                                <td>1</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Rarity </th>--%>
<%--                                                                                <td>Epic</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Type</th>--%>
<%--                                                                                <td>Digital Art</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                        </tbody>--%>
<%--                                                                    </table>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                        <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">--%>
<%--                                                            <div class="product-additional-info">--%>
<%--                                                                <div class="table-responsive">--%>
<%--                                                                    <table>--%>
<%--                                                                        <tbody>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Brand</th>--%>
<%--                                                                                <td>eTrade</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Collection </th>--%>
<%--                                                                                <td>eTrade Capsules</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Creator</th>--%>
<%--                                                                                <td>Arnold Ray</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Gen</th>--%>
<%--                                                                                <td>1</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Rarity </th>--%>
<%--                                                                                <td>Epic</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                            <tr>--%>
<%--                                                                                <th>Type</th>--%>
<%--                                                                                <td>Digital Art</td>--%>
<%--                                                                            </tr>--%>
<%--                                                                        </tbody>--%>
<%--                                                                    </table>--%>
<%--                                                                </div>--%>
<%--                                                            </div>--%>
<%--                                                        </div>--%>
<%--                                                    </div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <!-- woocommerce-tabs -->--%>


<%--                                            <!-- End Product Action Wrapper  -->--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- End .single-product-thumb -->--%>
<%--        </div>--%>
<%--        <!-- End Shop Area  -->--%>

<%--        <!-- Start Recently Viewed Product Area  -->--%>
<%--        <div class="axil-product-area bg-color-white pt--10 pb--50 pb_sm--30">--%>
<%--            <div class="container">--%>
<%--                <div class="section-title-wrapper">--%>
<%--                    <span class="title-highlighter highlighter-primary"><i class="far fa-shopping-basket"></i> Related</span>--%>
<%--                    <h2 class="title">Related Product</h2>--%>
<%--                </div>--%>
<%--                <div class="recent-product-activation slick-layout-wrapper--15 axil-slick-arrow arrow-top-slide">--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="100" data-sal-duration="1500" src="assets/images/product/nft/product-6.png" alt="Product Images">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$30</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club <span class="verified-icon"><i class="fas fa-badge-check"></i></span></a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="200" data-sal-duration="1500" src="assets/images/product/nft/product-5.png" alt="Product Images">--%>
<%--                                </a>--%>

<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$3000</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club</a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="300" data-sal-duration="1500" src="assets/images/product/nft/product-4.png" alt="Product Images">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$100</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club <span class="verified-icon"><i class="fas fa-badge-check"></i></span></a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="400" data-sal-duration="1500" src="assets/images/product/nft/product-3.png" alt="Product Images">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$2000</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club <span class="verified-icon"><i class="fas fa-badge-check"></i></span></a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="100" data-sal-duration="1500" src="assets/images/product/nft/product-2.png" alt="Product Images">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$5000</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club</a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="200" data-sal-duration="1500" src="assets/images/product/nft/product-5.png" alt="Product Images">--%>
<%--                                </a>--%>

<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$3000</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club</a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="300" data-sal-duration="1500" src="assets/images/product/nft/product-4.png" alt="Product Images">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$100</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club <span class="verified-icon"><i class="fas fa-badge-check"></i></span></a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="400" data-sal-duration="1500" src="assets/images/product/nft/product-3.png" alt="Product Images">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$2000</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club <span class="verified-icon"><i class="fas fa-badge-check"></i></span></a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                    <div class="slick-single-layout">--%>
<%--                        <div class="axil-product product-style-six">--%>
<%--                            <div class="thumbnail">--%>
<%--                                <a href="single-product-7.html">--%>
<%--                                    <img data-sal="fade" data-sal-delay="100" data-sal-duration="1500" src="assets/images/product/nft/product-2.png" alt="Product Images">--%>
<%--                                </a>--%>
<%--                            </div>--%>
<%--                            <div class="product-content">--%>
<%--                                <div class="inner">--%>
<%--                                    <div class="product-price-variant">--%>
<%--                                        <span class="price current-price">$5000</span>--%>
<%--                                    </div>--%>
<%--                                    <h5 class="title"><a href="single-product-7.html">Bored Ape Yacht Club</a></h5>--%>
<%--                                    <div class="product-hover-action">--%>
<%--                                        <ul class="cart-action">--%>
<%--                                            <li class="select-option"><a href="single-product-7.html">Buy Product</a></li>--%>
<%--                                        </ul>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <!-- End .slick-single-layout -->--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <!-- End Recently Viewed Product Area  -->--%>
<%--    </main>--%>