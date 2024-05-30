<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="textarea" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
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
                                <li class="breadcrumb-item active" aria-current="page">login-Register</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- login register wrapper start -->
    <div class="login-register-wrapper section-padding">
        <div class="container">
            <div class="member-area-from-wrap">
                <div class="row">
                    <!-- Register Content Start -->
                    <div class="col-lg-6 m-auto">
                        <div class="login-reg-form-wrap sign-up-form">
                            <h5>Singup Form</h5>
                            <form:form action="${contextPath}/save" method="post" modelAttribute="user">
                                <form:hidden path="role" value="false"/>
                                <form:hidden path="status" value="false"/>
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="single-input-item">
                                            <form:input type="text" path="firstName" placeholder="firstName"/>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-input-item">
                                            <form:input type="text" path="lastName" placeholder="lastName"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-input-item">
                                    <form:input type="text" placeholder="User name" path="username"/>
                                </div>
                                <div class="single-input-item">
                                    <form:input type="text" placeholder="Email" path="email"/>
                                </div>
                                <div class="single-input-item">
                                    <form:input type="password" placeholder="Password" path="password"/>
                                </div>
                                <div class="single-input-item">
                                    <div class="login-reg-form-meta">
                                        <div class="remember-meta">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" class="custom-control-input" id="subnewsletter">
                                                <label class="custom-control-label" for="subnewsletter">Subscribe
                                                    Our Newsletter</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-input-item">
                                    <button class="btn btn-sqr">Register</button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                    <!-- Register Content End -->
                </div>
            </div>
        </div>
    </div>
    <!-- login register wrapper end -->
</main>