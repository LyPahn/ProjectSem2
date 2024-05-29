<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set var= "contextPath" value="${pageContext.servletContext.contextPath}" scope="session"/>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from html.hixstudio.net/ebazer/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 25 Mar 2024 09:56:54 GMT -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eBazer - Tailwind CSS eCommerce Admin Template</title>
    <link rel="shortcut icon" href="${contextPath}/admin/img/logo/favicon.png" type="image/x-icon">

    <!-- css links -->
    <link rel="stylesheet" href="${contextPath}/admin/css/perfect-scrollbar.css">
    <link rel="stylesheet" href="${contextPath}/admin/css/choices.css">
    <link rel="stylesheet" href="${contextPath}/admin/css/apexcharts.css">
    <link rel="stylesheet" href="${contextPath}/admin/css/quill.css">
    <link rel="stylesheet" href="${contextPath}/admin/css/rangeslider.css">
    <link rel="stylesheet" href="${contextPath}/admin/css/custom.css">
    <link rel="stylesheet" href="${contextPath}/admin/css/main.css">
</head>
<body>

    <!--  -->
    <div class="tp-main-wrapper h-screen">
        <div class="container mx-auto my-auto h-full flex items-center justify-center">
            <div class="pt-[120px] pb-[120px]">
                <div class="grid grid-cols-12 shadow-lg bg-white overflow-hidden rounded-md ">
                    <div class="col-span-12 lg:col-span-6 md:w-[500px] mx-auto my-auto  pt-[50px] py-[60px] px-5 md:px-[60px]">
                        <div class="text-center">
                            <h4 class="text-[24px] mb-1">Login Now.</h4>
                            <p>Don't have an account?  <span> <a href="register.html" class="text-theme">Sign Up</a> </span></p>
                        </div>
                        <p>${msg }</p>
                        <div class="">
                            <form action="${contextPath}/dang-nhap" method="post">
                                <div class="mb-5">
                                    <p class="mb-0 text-base text-black">Tên đăng nhập <span class="text-red">*</span></p>
                                    <input class="input w-full h-[49px] rounded-md border border-gray6 px-6 text-base" type="text" name = "userName" placeholder="Enter Your Email">
                                </div>
                                <div class="mb-5">
                                    <p class="mb-0 text-base text-black">Mật khẩu <span class="text-red">*</span></p>
                                    <input class="input w-full h-[49px] rounded-md border border-gray6 px-6 text-base" type="password" placeholder="Password" name="password">
                                </div>
                                <div class="flex items-center justify-between">
                                    <div class="tp-checkbox flex items-start space-x-2 mb-3">
                                        <input id="product-1" type="checkbox">
                                        <label for="product-1" class="text-tiny">Remember Me</label>
                                    </div>
                                    <div class="mb-4">
                                        <a href="forgot.html" class="text-tiny font-medium text-theme border-b border-transparent hover:border-theme">Forgot Password ?</a>
                                    </div>
                                </div>
                                <button class="tp-btn h-[49px] w-full justify-center">Sign In</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="${contextPath}/admin/js/alpine.js"></script>
    <script src="${contextPath}/admin/js/perfect-scrollbar.js"></script>
    <script src="${contextPath}/admin/js/choices.js"></script>
    <script src="${contextPath}/admin/js/chart.js"></script>
    <script src="${contextPath}/admin/js/apexchart.js"></script>
    <script src="${contextPath}/admin/js/quill.js"></script>
    <script src="${contextPath}/admin/js/rangeslider.min.js"></script>
    <script src="${contextPath}/admin/js/main.js"></script>
    
</body>

<!-- Mirrored from html.hixstudio.net/ebazer/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 25 Mar 2024 09:56:54 GMT -->
</html>