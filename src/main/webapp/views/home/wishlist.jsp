<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<main>
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
                                <li class="breadcrumb-item"><a href="shop.html">shop</a></li>
                                <li class="breadcrumb-item active" aria-current="page">wishlist</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- wishlist main wrapper start -->
    <div class="wishlist-main-wrapper section-padding">
        <div class="container">
            <!-- Wishlist Page Content Start -->
            <div class="section-bg-color">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Wishlist Table Area -->
                        <div class="cart-table table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th class="pro-thumbnail">Thumbnail</th>
                                    <th class="pro-title">Product</th>
                                    <th class="pro-price">Price</th>
                                    <th class="pro-quantity">Stock Status</th>
                                    <th class="pro-subtotal">Add to Cart</th>
                                    <th class="pro-remove">Remove</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="w" items="${users.wishlists}">
                                    <span>${w.productId}</span>
<%--                                    <tr>--%>
<%--                                        <td class="pro-thumbnail"><a href="#"><img class="img-fluid" src="assets/img/product/product-5.jpg" alt="Product" /></a></td>--%>
<%--                                        <td class="pro-title"><a href="#">${w.product.productName}</a></td>--%>
<%--                                        <td class="pro-price"><span>${w.product.price}</span></td>--%>
<%--                                        <td class="pro-quantity"><span class="text-success">${w.product.status}</span></td>--%>
<%--                                        <td class="pro-subtotal"><a href="cart.html" class="btn btn-sqr">Add to--%>
<%--                                            Cart</a></td>--%>
<%--                                        <td class="pro-remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>--%>
<%--                                    </tr>--%>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Wishlist Page Content End -->
        </div>
    </div>
    <!-- wishlist main wrapper end -->
</main>