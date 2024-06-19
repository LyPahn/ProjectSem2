<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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
                                <c:forEach var="c" items="${cartItem}">
                                        <tr>
                                            <td class="pro-thumbnail"><a href="${contextPath}/chi-tiet/${c.product.id}"><img class="img-fluid" src="${contextPath}/resources/images/${c.product.image}" alt="Product" /></a></td>
                                            <td class="pro-title"><a href="${contextPath}/chi-tiet/${c.product.id}">${c.product.productName}</a></td>
                                            <td class="pro-price">${c.product.price}<span></span></td>
                                            <td class="pro-quantity">

                                                    <input type="hidden" name="id" value="${c.product.id}">
                                                  <input type="hidden" name="productId" value="${c.product.id}">
                                                    <div class="pro-qty">
                                                        <button class="dec qtybtn decrease" id="dec-quantity" >-</button>
                                                        <input type="hidden" class="proId" value="${c.product.id}">
                                                        <input name="quantity" class="quantity" type="number"   min="1" value="${c.quantity}" readonly>
                                                        <button class="inc qtybtn increase" id="inc-quantity" >+</button>
                                                    </div>

                                            </td>
                                            <c:set var="total" value="${total+c.product.price*c.quantity}" />
                                            <td class="pro-subtotal"><span>${c.product.price*c.quantity}</span></td>
                                            <td class="pro-remove"><a href="${contextPath}/delete-cart/${c.id}"><i class="fa fa-trash-o"></i></a></td>
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
                            <a href="${contextPath}/order/${sessionScope.id}" class="btn btn-sqr d-block">Proceed Checkout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- cart main wrapper end -->
</main>
<script>
    function updateCart(id , quantity) {
        $.get("/updateCart/" + id + "/" + quantity, function() {
            window.location.reload();
            // document.getElementById('submitForm').submit();
        });
    }



    document.addEventListener("DOMContentLoaded", function() {
        // Lấy tất cả các nút tăng và giảm số lượng sản phẩm
        const increaseButtons = document.querySelectorAll('.increase');
        const decreaseButtons = document.querySelectorAll('.decrease');

        // Thêm sự kiện click cho từng nút tăng
        increaseButtons.forEach(button => {
            button.addEventListener('click', function() {
                const product = button.parentElement;
                const quantityElement = product.querySelector('.quantity');
                const proId = product.querySelector('.proId').value;
                let currentQuantity = parseInt(quantityElement.value);
                quantityElement.value = currentQuantity + 1;
                updateCart(proId,quantityElement.value);
            });
        });

        // Thêm sự kiện click cho từng nút giảm
        decreaseButtons.forEach(button => {
            button.addEventListener('click', function() {
                const product = button.parentElement;
                const quantityElement = product.querySelector('.quantity');
                let currentQuantity = parseInt(quantityElement.value);
                if (currentQuantity > 1) {
                    quantityElement.value = currentQuantity - 1;
                    const proId = product.querySelector('.proId').value;
                    updateCart(proId,quantityElement.value);
                }
            });
        });
    });
</script>