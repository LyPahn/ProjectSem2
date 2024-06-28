<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                                <li class="breadcrumb-item active" aria-current="page">shop</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- page main wrapper start -->
    <div class="shop-main-wrapper section-padding">
        <div class="container">
            <div class="row">
                <!-- sidebar area start -->
                <div class="col-lg-3 order-2 order-lg-1">
                    <aside class="sidebar-wrapper">
                        <!-- single sidebar start -->
                        <div class="sidebar-single">
                            <h5 class="sidebar-title">categories</h5>
                            <div class="sidebar-body">
                                <form:form id="filterFormCategory" onsubmit="return filterCategories()" class="d-flex align-items-center justify-content-between">
                                    <ul class="checkbox-container categories-list">
                                        <c:forEach var="c" items="${categories}">
                                            <c:choose>
                                                <c:when test="${c.id == cateid}">
                                                    <li>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="cate${c.id}" checked value="${c.id}">
                                                            <label class="custom-control-label" for="cate${c.id}">${c.cateName} (${c.productCount})</label>
                                                        </div>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="cate${c.id}" value="${c.id}">
                                                            <label class="custom-control-label" for="cate${c.id}">${c.cateName} (${c.productCount})</label>
                                                        </div>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </ul>
                                    <button class="filter-btn" type="submit">filter</button>
                                </form:form>
                            </div>
                        </div>
                        <!-- single sidebar end -->

                        <!-- single sidebar start -->
                        <div class="sidebar-single">
                            <h5 class="sidebar-title">price</h5>
                            <div class="sidebar-body">
                                <div class="price-range-wrap">
                                    <div class="price-range" data-min="1" data-max="1000"></div>
                                    <div class="range-slider">
                                        <form action="${contextPath}/searchPrice" class="d-flex align-items-center justify-content-between">
                                            <div class="price-input">
                                                Min:$<input type="text" id="amount1" name="min">
                                                Max:$<input type="text" id="amount2" name="max">
                                            </div>
                                            <button class="filter-btn">filter</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- single sidebar end -->

                        <!-- single sidebar start -->
                        <div class="sidebar-single">
                            <h5 class="sidebar-title">Brand</h5>
                            <div class="sidebar-body">
                                <form:form id="filterFormBrand" onsubmit="return filterBrands()" class="d-flex align-items-center justify-content-between">
                                    <ul class="checkbox-container categories-list">
                                        <c:forEach var="b" items="${brands}">
                                            <c:choose>
                                                <c:when test="${b.id == brandid}">
                                                    <li>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="brand${b.id}" checked value="${b.id}">
                                                            <label class="custom-control-label" for="brand${b.id}">${b.brandName} (${b.productCount})</label>
                                                        </div>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" class="custom-control-input" id="brand${b.id}"  value="${b.id}">
                                                            <label class="custom-control-label" for="brand${b.id}">${b.brandName} (${b.productCount})</label>
                                                        </div>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:forEach>
                                    </ul>
                                    <button class="filter-btn" type="submit">filter</button>
                                </form:form>
                            </div>
                        </div>
                        <!-- single sidebar end -->

                        <!-- single sidebar start -->
                        <div class="sidebar-single">
                            <h5 class="sidebar-title">size</h5>
                            <div class="sidebar-body">
                                <ul class="checkbox-container categories-list">
                                    <li>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck111">
                                            <label class="custom-control-label" for="customCheck111">S (4)</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck222">
                                            <label class="custom-control-label" for="customCheck222">M (5)</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck333">
                                            <label class="custom-control-label" for="customCheck333">L (7)</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="customCheck444">
                                            <label class="custom-control-label" for="customCheck444">XL (3)</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- single sidebar end -->

                        <!-- single sidebar start -->
                        <div class="sidebar-banner">
                            <div class="img-container">
                                <a href="#">
                                    <img src="${contextPath}/resources/home/assets/img/banner/sidebar-banner.jpg" alt="">
                                </a>
                            </div>
                        </div>
                        <!-- single sidebar end -->
                    </aside>
                </div>
                <!-- sidebar area end -->

                <!-- shop main wrapper start -->
                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="shop-product-wrapper">
                        <!-- shop product top wrap start -->
                        <div class="shop-top-bar">
                            <div class="row align-items-center">
                                <div class="col-lg-7 col-md-6 order-2 order-md-1">
                                    <div class="top-bar-left">
                                        <div class="product-view-mode">
                                            <a class="active" href="#" data-target="grid-view" data-bs-toggle="tooltip" title="Grid View"><i class="fa fa-th"></i></a>
                                            <a href="#" data-target="list-view" data-bs-toggle="tooltip" title="List View"><i class="fa fa-list"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-6 order-1 order-md-2">
                                    <div class="top-bar-right">
                                        <div class="product-short">
                                            <p>Sort By : </p>
                                            <form id="submitForm" action="${contextPath}/searchPrice" method="get" onchange="submitSortForm()">
                                                <select class="nice-select" name="sort">
                                                    <option value="default" <c:if test="${sort == 'default'}">selected</c:if>>Relevance</option>
                                                    <option value="name_asc" <c:if test="${sort == 'name_asc'}">selected</c:if>>Name (A - Z)</option>
                                                    <option value="name_desc" <c:if test="${sort == 'name_desc'}">selected</c:if>>Name (Z - A)</option>
                                                    <option value="price_asc" <c:if test="${sort == 'price_asc'}">selected</c:if>>Price (Low &gt; High)</option>
                                                    <option value="price_desc" <c:if test="${sort == 'price_desc'}">selected</c:if>>Price (High > Low)</option>
                                                </select>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- shop product top wrap start -->

                        <!-- product item list wrapper start -->
                        <div class="shop-product-wrap grid-view row mbn-30">
                            <c:forEach var="p" items="${products.content}">
                                <!-- product single item start -->
                                <div class="col-md-4 col-sm-6">
                                    <!-- product grid start -->
                                    <div class="product-item">
                                        <figure class="product-thumb">
                                            <a href="${contextPath}/chi-tiet/${p.id}/${p.categoryId}">
                                                <img class="" src="${contextPath}/resources/images/${p.image}" alt="product">
                                            </a>
                                            <div class="product-badge">
                                                <div class="product-label new">
                                                    <span>new</span>
                                                </div>
                                                <div class="product-label discount">
                                                    <span><fmt:formatNumber value="${(p.price * 100) / p.priceOld}"/>%</span>
                                                </div>
                                            </div>
                                            <div class="button-group">
                                                <form:form method="post" action="${contextPath}/addwishlist" modelAttribute="wishlist">
                                                    <form:hidden path="productId" value="${p.id}" />
                                                    <form:hidden path="userId" value="${sessionScope.id}" />
                                                    <button><a data-bs-toggle="tooltip" data-bs-placement="left" title="Add to wishlist"><i class="pe-7s-like"></i></a></button>
                                                </form:form>
                                                <a href="compare.html" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Compare"><i class="pe-7s-refresh-2"></i></a>
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#quick_view"><span data-bs-toggle="tooltip" data-bs-placement="left" title="Quick View"><i class="pe-7s-search"></i></span></a>
                                            </div>
                                            <div class="cart-hover">
                                                <form:form method="get" action="${contextPath}/addtocart/${p.id}" modelAttribute="cartItem">
                                                    <form:hidden path="quantity" value = "1" />
                                                    <c:choose>
                                                        <c:when test="${p.size == true}">
                                                            <form:hidden value="1" path="size" />
                                                        </c:when>
                                                        <c:otherwise>
                                                            <form:hidden path="size" value="0"/>
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <button class="btn btn-cart">add to cart</button>
                                                </form:form>
                                            </div>
                                        </figure>
                                        <div class="product-caption text-center">
                                            <div class="product-identity">
                                                <p class="manufacturer-name"><a href="${contextPath}/chi-tiet/${p.id}">${p.category.cateName}</a></p>
                                            </div>
                                            <h6 class="product-name">
                                                <a href="${contextPath}/chi-tiet/${p.id}/${p.categoryId}">${p.productName}</a>
                                            </h6>
                                            <div class="price-box">
                                                <span class="price-regular">$<fmt:formatNumber value="${p.price}"/></span>
                                                <span class="price-old"><del>$<fmt:formatNumber value="${p.priceOld}"/></del></span>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- product grid end -->

                                    <!-- product list item end -->
                                    <div class="product-list-item">
                                        <figure class="product-thumb">
                                            <a href="${contextPath}/chi-tiet/${p.id}/${p.categoryId}">
                                                <img class="" src="${contextPath}/resources/images/${p.image}" alt="product">
                                            </a>
                                            <div class="product-badge">
                                                <div class="product-label new">
                                                    <span>new</span>
                                                </div>
                                                <div class="product-label discount">
                                                    <span><fmt:formatNumber value="${(p.price * 100) / p.priceOld}"/>%</span>
                                                </div>
                                            </div>
                                            <div class="button-group">
                                                <a href="wishlist.html" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to wishlist"><i class="pe-7s-like"></i></a>
                                                <a href="compare.html" data-bs-toggle="tooltip" data-bs-placement="left" title="Add to Compare"><i class="pe-7s-refresh-2"></i></a>
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#quick_view"><span data-bs-toggle="tooltip" data-bs-placement="left" title="Quick View"><i class="pe-7s-search"></i></span></a>
                                            </div>
                                            <div class="cart-hover">
                                                <button class="btn btn-cart">add to cart</button>
                                            </div>
                                        </figure>
                                        <div class="product-content-list">
                                            <div class="manufacturer-name">
                                                <a href="${contextPath}/chi-tiet/${p.id}/${p.categoryId}"</a>
                                            </div>
                                            <h5 class="product-name"><a href="${contextPath}/chi-tiet/${p.id}/${p.categoryId}">${p.productName}</a></h5>
                                            <div class="price-box">
                                                <span class="price-regular">$<fmt:formatNumber value="${p.price}"/></span>
                                                <span class="price-old"><del>$<fmt:formatNumber value="${p.priceOld}"/></del></span>
                                            </div>
                                            <p>${p.description}</p>
                                        </div>
                                    </div>
                                    <!-- product list item end -->
                                </div>
                                <!-- product single item start -->
                            </c:forEach>
                        </div>
                        <!-- product item list wrapper end -->

                        <!-- start pagination area -->
                        <div class="paginatoin-area text-center">
                            <ul class="pagination-box">
                                <c:choose>
                                    <c:when test="${not products.first}">
                                        <li><a class="previous" href="?page=${products.number - 1}&size=${products.size}&min=${min}&max=${max}"><i class="pe-7s-angle-left"></i></a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li><a class="previous" ><i class="pe-7s-angle-left"></i></a></li>
                                    </c:otherwise>
                                </c:choose>
                                <c:forEach begin="0" end="${products.totalPages - 1}" step="1" varStatus="status">
                                    <c:choose>
                                        <c:when test="${status.index == products.number}">
                                            <li class="active"><a href="#">${status.index + 1}</a></li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="#"><a href="?page=${status.index}&size=${products.size}&min=${min}&max=${max}">${status.index + 1}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <c:choose>
                                    <c:when test="${not products.last}">
                                        <li><a class="next" href="?page=${products.number + 1}&size=${products.size}&min=${min}&max=${max}"><i class="pe-7s-angle-right"></i></a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li><a class="next"><i class="pe-7s-angle-right"></i></a></li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                        <!-- end pagination area -->
                    </div>
                </div>
                <!-- shop main wrapper end -->
            </div>
        </div>
    </div>
    <!-- page main wrapper end -->
</main>
<script>
    function filterCategories() {
        var form = document.getElementById('filterFormCategory');
        var checkboxes = form.querySelectorAll('input[type="checkbox"]:checked');
        var categoryIds = [];

        checkboxes.forEach(function(checkbox) {
            categoryIds.push(checkbox.value);
        });

        if (categoryIds.length > 0) {
            var url = 'shop-categories/' + categoryIds.join(',');
            window.location.href = url;
        } else {
            alert("Please select at least one category.");
        }

        return false; // Prevent form submission
    }

    function filterBrands() {
        var form = document.getElementById('filterFormBrand');
        var checkboxes = form.querySelectorAll('input[type="checkbox"]:checked');
        var brandIds = [];

        checkboxes.forEach(function(checkbox) {
            brandIds.push(checkbox.value);
        });

        if (brandIds.length > 0) {
            var url = 'shop-brands/' + brandIds.join(',');
            window.location.href = url;
        } else {
            alert("Please select at least one brand.");
        }

        return false; // Prevent form submission
    }
</script>
<script type="text/javascript">
    function submitPageSize() {
        document.getElementById('submitForm').submit();
    }

    function submitSortForm() {
        document.getElementById('submitForm').submit();
    }

    function submitSearchForm() {
        document.getElementById('searchForm').submit();
    }

</script>