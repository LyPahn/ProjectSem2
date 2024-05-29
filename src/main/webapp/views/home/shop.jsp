<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <!-- Start Breadcrumb Area  -->
        <div class="axil-breadcrumb-area">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-8">
                        <div class="inner">
                            <ul class="axil-breadcrumb">
                                <li class="axil-breadcrumb-item"><a href="index.html">Trang chủ</a></li>
                                <li class="separator"></li>
                                <li class="axil-breadcrumb-item active" aria-current="page">Cửa hàng</li>
                            </ul>
                            <h1 class="title">Tất cả sản phẩm</h1>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4">
                        <div class="inner">
                            <div class="bradcrumb-thumb">
                                <img src="${contextPath}/home/assets/images/product/product-45.png" alt="Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumb Area  -->
        <!-- Start Shop Area  -->
        <div class="axil-shop-area axil-section-gap bg-color-white">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="axil-shop-top">
                            <div class="row">
                                <div class="col-lg-9">
                                <form action="" method="get">
                                    <div class="category-select">
											<select class="single-select" name="cateid" onchange="forms[1].submit()">
                                        	<option value="0">Danh mục</option>
                                        	<c:forEach items="${categories}" var="c">
                                        		<c:choose>
                                        			<c:when test="${c.id == cateid }">
                                        				<option value="${c.id }" selected="selected">${c.cateName}</option>	
                                        			</c:when>
                                        			
                                        			<c:otherwise>
                                        				<option value="${c.id }">${c.cateName}</option>
                                        			</c:otherwise>
                                        		</c:choose>
                                        		
                                        	</c:forEach>
                                        </select>
										
                                        <!-- Start Single Select  -->
                                        
                                        <!-- End Single Select  ->

                                        <!-- Start Single Select  -->
                                       	<div class="d-flex justify-content-center align-items-center">
                                       			<span>Giá từ</span>
                                       		<input class="form-control" name="fromprice">
                                       			<span>Đến</span>
                                       		<input class="form-control" name="toprice">
                                       	</div> 
                                       

                                    </div>
                                    <button class="btn btn-primary" type="submit">Tìm</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row row--15">
                	<c:forEach items="${product}" var="p">
                	
                		<div class="col-xl-3 col-lg-4 col-sm-6">
                        <div class="axil-product product-style-one has-color-pick mt--40">
                            <div class="thumbnail">
                                <a href="single-product.html">
                                    <img src="${contextPath}/${p.image}" alt="Product Images">
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
                                    <h5 class="title"><a href="single-product.html">${p.productName }</a></h5>
                                    <div class="product-price-variant">
                                        <span class="price current-price"><span>$</span><f:formatNumber>${p.price}</f:formatNumber></span>
                                        <span class="price old-price"><span>$</span><f:formatNumber>${p.priceOld}</f:formatNumber></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                	
                	</c:forEach>
                </div>
                
                	
                <nav aria-label="Page navigation example">
               
					  <ul class="pagination justify-content-center align-items-center">
					   <span class="p-3">Trang:</span>
					  		 <c:forEach var="i" begin="1" end="${totalpage}">
                    			<c:choose>
                    				<c:when test="${i==currentpage}">
                    					 <li class="page-item"><a class="page-link" href="">${i}</a></li>
                    					
                    				</c:when>
                    		
                    				<c:otherwise>
                    					<li class="page-item"><a class="page-link" href="cua-hang?cateid=${cateid}&pageno=${i}">${i}</a></li>
                    				</c:otherwise>
                    			</c:choose>
                    		</c:forEach>
					  </ul>
				</nav>
                   
                </div>
            </div>
            <!-- End .container -->

        <!-- End Shop Area  -->