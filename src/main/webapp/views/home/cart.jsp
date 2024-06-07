<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="total" value="0" />
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
                                <li class="breadcrumb-item active" aria-current="page">cart</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- cart main wrapper start -->
    <div class="cart-main-wrapper section-padding">
        <div class="container">
            <div class="section-bg-color">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Cart Table Area -->
                        <div class="cart-table table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <th class="pro-thumbnail">Thumbnail</th>
                                    <th class="pro-title">Product</th>
                                    <th class="pro-price">Price</th>
                                    <th class="pro-quantity">Quantity</th>
                                    <th class="pro-subtotal">Total</th>
                                    <th class="pro-remove">Remove</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="c" items="${cart_item}">
                                    <tr>
                                        <td class="pro-thumbnail"><a href="${contextPath}/chi-tiet/${c.product.id}"><img class="img-fluid" src="${contextPath}/resources/images/${c.product.image}" alt="Product" /></a></td>
                                        <td class="pro-title"><a href="#">${c.product.productName}</a></td>
                                        <td class="pro-price">${c.product.price}<span></span></td>
                                        <td class="pro-quantity">
                                            <div class="pro-qty">
                                                <input type="number" id="quantity-${c.id}" value="${c.quantity}"></div>
                                        </td>
                                        <c:set var="total" value="${total+c.product.price*c.quantity}" />
                                        <td class="pro-subtotal"><span>${c.product.price*c.quantity}</span></td>
                                        <td class="pro-remove"><a href="#"><i class="fa fa-trash-o"></i></a></td>
                                        <td><button onclick="updateCartItem(${cart_item.id})">Update Cart</button></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <!-- Cart Update Option -->
                        <div class="cart-update-option d-block d-md-flex justify-content-between">
                            <div class="apply-coupon-wrapper">
                                <form action="#" method="post" class=" d-block d-md-flex">
                                    <input type="text" placeholder="Enter Your Coupon Code" required />
                                    <button class="btn btn-sqr">Apply Coupon</button>
                                </form>
                            </div>
                            <div class="cart-update">
                                <button class="btn btn-sqr" onclick="updateCartItem(${cart_item.id})">Update Cart</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5 ml-auto">
                        <!-- Cart Calculation Area -->
                        <div class="cart-calculator-wrapper">
                            <div class="cart-calculate-items">
                                <h6>Cart Totals</h6>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr class="total">
                                            <td>Total</td>
                                            <td class="total-amount"><fmt:formatNumber value="${total}" type="currency"/></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <a href="checkout.html" class="btn btn-sqr d-block">Proceed Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- cart main wrapper end -->
</main>
<script>
    function updateCartItem(cartId) {
        const quantity = $(`#quantity-${cartId}`).val();
        $.ajax({
            url: `/cart-update`,
            type: 'POST',
            data: {
                cartItemId: cartId,
                quantity: quantity
            },
            success: function(response) {
                alert('Cart item updated');
                fetchCart();
            },
            error: function(error) {
                console.error('Error updating cart item:', error);
            }
        });
    }

    $(document).ready(function() {
        fetchCart();
    });
</script>