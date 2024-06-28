<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<c:set var="total" value="0"/>
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
                                <li class="breadcrumb-item active" aria-current="page">checkout</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- checkout main wrapper start -->
    <form:form action="${contextPath}/order/saveOrder" method="post" modelAttribute="user">
        <div class="checkout-page-wrapper section-padding">
            <div class="container">
                <div class="row">
                    <!-- Checkout Billing Details -->
                    <div class="col-lg-6">
                        <div class="checkout-billing-details-wrap">
                            <h5 class="checkout-title">Billing Details</h5>
                            <div class="billing-form-wrap">
                                <div action="#">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label for="f_name" class="required">First Name</label>
                                                <form:input type="text" id="f_name" placeholder="First Name" path="firstName"/>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <div class="single-input-item">
                                                <label for="l_name" class="required">Last Name</label>
                                                <form:input type="text" id="l_name" placeholder="Last Name" path="lastName"/>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="single-input-item">
                                        <label for="email" class="required">Email Address</label>
                                        <form:input type="text" id="email" placeholder="Email Address"
                                               path="email"/>
                                    </div>

                                    <div class="single-input-item">
                                        <label for="country" class="required">District</label>
                                        <select name="country nice-select" id="country">
                                            <option value="Afghanistan">Cầu Giấy</option>
                                            <option value="Albania">Cổ Nhuế</option>
                                            <option value="Algeria">Ba Đình</option>
                                            <option value="Armenia">Hà Đông</option>
                                            <option value="Bangladesh">Đông Anh</option>
                                        </select>
                                    </div>

                                    <div class="single-input-item">
                                        <label for="street-address" class="required mt-20">Street address</label>
                                        <form:input type="text" id="street-address" placeholder="Street address Line 1"
                                               path="address"/>
                                    </div>

                                    <div class="single-input-item">
                                        <label for="phone">Phone</label>
                                        <form:input type="text" id="phone" placeholder="Phone"
                                               path="phone"/>
                                    </div>

                                    <div class="single-input-item">
                                        <label for="ordernote">Order Note</label>
                                        <textarea name="ordernote" id="ordernote" cols="30" rows="3"
                                                  placeholder="Notes about your order, e.g. special notes for delivery."></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Summary Details -->
                    <div class="col-lg-6">
                        <div class="order-summary-details">
                            <h5 class="checkout-title">Your Order Summary</h5>
                            <div class="order-summary-content">
                                <!-- Order Summary Table -->
                                <div class="order-summary-table table-responsive text-center">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>Products</th>
                                            <th>Total</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="c" items="${cartItem}">
                                            <tr>
                                                <td><a href="">${c.product.productName} <strong>
                                                    × ${c.quantity}</strong></a>
                                                </td>
                                                <td>$${c.product.price*c.quantity}</td>
                                            </tr>
                                            <c:set var="total" value="${total+c.product.price*c.quantity}"/>
                                        </c:forEach>
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <td>Total Amount</td>
                                            <td>
                                                <strong>$<fmt:formatNumber value="${total}"/></strong>
                                                <input type="hidden" name="total" value="${total}">
                                            </td>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                                <!-- Order Payment Method -->
                                <div class="order-payment-method">
                                    <div class="single-payment-method show">
                                        <div class="payment-method-name">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="cashon" name="paymentmethod" value="cash"
                                                       class="custom-control-input" checked/>
                                                <label class="custom-control-label" for="cashon">Cash On
                                                    Delivery</label>
                                            </div>
                                        </div>
                                        <div class="payment-method-details" data-method="cash">
                                            <p>Pay with cash upon delivery.</p>
                                        </div>
                                    </div>
                                    <div class="single-payment-method">
                                        <div class="payment-method-name">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="directbank" name="paymentmethod" value="bank"
                                                       class="custom-control-input"/>
                                                <label class="custom-control-label" for="directbank">Direct Bank
                                                    Transfer</label>
                                            </div>
                                        </div>
                                        <div class="payment-method-details" data-method="bank">
                                            <p>Make your payment directly into our bank account. Please use your Order
                                                ID as the payment reference. Your order will not be shipped until the
                                                funds have cleared in our account..</p>
                                        </div>
                                    </div>
                                    <div class="single-payment-method">
                                        <div class="payment-method-name">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="checkpayment" name="paymentmethod" value="check"
                                                       class="custom-control-input"/>
                                                <label class="custom-control-label" for="checkpayment">Pay with
                                                    Check</label>
                                            </div>
                                        </div>
                                        <div class="payment-method-details" data-method="check">
                                            <p>Please send a check to Store Name, Store Street, Store Town, Store State
                                                / County, Store Postcode.</p>
                                        </div>
                                    </div>
                                    <div class="single-payment-method">
                                        <div class="payment-method-name">
                                            <div class="custom-control custom-radio">
                                                <input type="radio" id="paypalpayment" name="paymentmethod"
                                                       value="paypal" class="custom-control-input"/>
                                                <label class="custom-control-label" for="paypalpayment">Paypal <img
                                                        src="${contextPath}/resources/home/assets/img/paypal-card.jpg"
                                                        class="img-fluid paypal-card" alt="Paypal"/></label>
                                            </div>
                                        </div>
                                        <div class="payment-method-details" data-method="paypal">
                                            <p>Pay via PayPal; you can pay with your credit card if you don’t have a
                                                PayPal account.</p>
                                        </div>
                                    </div>
                                    <div class="summary-footer-area">
                                        <div class="custom-control custom-checkbox mb-20">
                                            <input type="checkbox" class="custom-control-input" id="terms" required/>
                                            <label class="custom-control-label" for="terms">I have read and agree to
                                                the website <a href="index.html">terms and conditions.</a></label>
                                        </div>
                                        <button type="submit" class="btn btn-sqr">Place Order</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form:form>
    <!-- checkout main wrapper end -->
</main>