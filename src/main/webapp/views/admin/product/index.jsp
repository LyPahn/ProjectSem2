<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div id="top" class="sa-app__body">
    <div class="mx-xxl-3 px-4 px-sm-5">
        <div class="py-5">
            <div class="row g-4 align-items-center">
                <div class="col">
                    <h1 class="h3 m-0">Products</h1>
                </div>
                <div class="col-auto d-flex">
                    <a href="${contextPath}/admin/product/add-product" class="btn btn-primary">New product</a></div>
            </div>
        </div>
    </div>
    <div class="mx-xxl-3 px-4 px-sm-5 pb-6">
        <div class="sa-layout">
            <div class="sa-layout__backdrop" data-sa-layout-sidebar-close=""></div>
            <div class="sa-layout__sidebar">
                <div class="sa-layout__sidebar-header">
                    <div class="sa-layout__sidebar-title">Filters</div><button type="button"
                                                                               class="sa-close sa-layout__sidebar-close" aria-label="Close"
                                                                               data-sa-layout-sidebar-close=""></button>
                </div>
                <div class="sa-layout__sidebar-body sa-filters">
                    <ul class="sa-filters__list">
                        <li class="sa-filters__item">
                            <div class="sa-filters__item-title">Price</div>
                            <div class="sa-filters__item-body">
                                <div class="sa-filter-range" data-min="0" data-max="2000" data-from="0"
                                     data-to="2000">
                                    <div class="sa-filter-range__slider"></div><input type="hidden"
                                                                                      value="0" class="sa-filter-range__input-from" /><input type="hidden"
                                                                                                                                             value="2000" class="sa-filter-range__input-to" />
                                </div>
                            </div>
                        </li>
                        <li class="sa-filters__item">
                            <div class="sa-filters__item-title">Categories</div>
                            <div class="sa-filters__item-body">
                                <ul class="list-unstyled m-0 mt-n2">
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16"
                                                                                             checked="" />Power tools</label></li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16" />Hand
                                        tools</label></li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16"
                                                                                             checked="" />Machine tools</label></li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16" />Power
                                        machinery</label></li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16" />Measurement</label>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sa-filters__item">
                            <div class="sa-filters__item-title">Product type</div>
                            <div class="sa-filters__item-body">
                                <ul class="list-unstyled m-0 mt-n2">
                                    <li><label class="d-flex align-items-center pt-2"><input type="radio"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16"
                                                                                             name="filter-product_type" checked="" />Simple</label></li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="radio"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16"
                                                                                             name="filter-product_type" />Variable</label></li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="radio"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16"
                                                                                             name="filter-product_type" />Digital</label></li>
                                </ul>
                            </div>
                        </li>
                        <li class="sa-filters__item">
                            <div class="sa-filters__item-title">Brands</div>
                            <div class="sa-filters__item-body">
                                <ul class="list-unstyled m-0 mt-n2">
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16" />Brandix</label>
                                    </li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16"
                                                                                             checked="" />FastWheels</label></li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16"
                                                                                             checked="" />FuelCorp</label></li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16" />RedGate</label>
                                    </li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16" />Specter</label>
                                    </li>
                                    <li><label class="d-flex align-items-center pt-2"><input type="checkbox"
                                                                                             class="form-check-input m-0 me-3 fs-exact-16" />TurboElectric</label>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="sa-layout__content">
                <div class="card">
                    <div class="p-4">
                        <div class="row g-4">
                            <div class="col-auto sa-layout__filters-button"><button
                                    class="btn btn-sa-muted btn-sa-icon fs-exact-16"
                                    data-sa-layout-sidebar-open=""><svg xmlns="http://www.w3.org/2000/svg"
                                                                        width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor">
                                <path
                                        d="M7,14v-2h9v2H7z M14,7h2v2h-2V7z M12.5,6C12.8,6,13,6.2,13,6.5v3c0,0.3-0.2,0.5-0.5,0.5h-2 C10.2,10,10,9.8,10,9.5v-3C10,6.2,10.2,6,10.5,6H12.5z M7,2h9v2H7V2z M5.5,5h-2C3.2,5,3,4.8,3,4.5v-3C3,1.2,3.2,1,3.5,1h2 C5.8,1,6,1.2,6,1.5v3C6,4.8,5.8,5,5.5,5z M0,2h2v2H0V2z M9,9H0V7h9V9z M2,14H0v-2h2V14z M3.5,11h2C5.8,11,6,11.2,6,11.5v3 C6,14.8,5.8,15,5.5,15h-2C3.2,15,3,14.8,3,14.5v-3C3,11.2,3.2,11,3.5,11z">
                                </path>
                            </svg></button></div>
                            <div class="col"><input type="text"
                                                    placeholder="Start typing to search for products"
                                                    class="form-control form-control--search mx-auto" id="table-search" />
                            </div>
                        </div>
                    </div>
                    <div class="sa-divider"></div>
                    <table class="sa-datatables-init" data-order="[[ 1, &quot;asc&quot; ]]"
                           data-sa-search-input="#table-search">
                        <thead>
                        <tr>
                            <th class="w-min" data-orderable="false">
                                <input type="checkbox" class="form-check-input m-0 fs-exact-16 d-block" aria-label="..." />
                            </th>
                            <th class="min-w-20x">Product</th>
                            <th>CreateDate</th>
                            <th>Category</th>
                            <th>Stock</th>
                            <th>Price</th>
                            <th class="w-min" data-orderable="false"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach  var="p" items="${products}">
                            <tr>
                                <td><input type="checkbox" class="form-check-input m-0 fs-exact-16 d-block"
                                           aria-label="..." /></td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <a href=""class="me-4">
                                            <div class="sa-symbol sa-symbol--shape--rounded sa-symbol--size--lg" data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                 role="button" aria-controls="fileManagerDetails">
                                                <img src="${contextPath}/resources/images/${p.image}" width="40" height="40" alt="" />
                                            </div>
                                        </a>
                                        <div>
                                            <a class="text-reset">${p.productName}</a>
                                                <div class="sa-meta mt-0">
                                                    <ul class="sa-meta__list">
                                                        <li class="sa-meta__item">ID: <span
                                                                title="Click to copy product ID"
                                                                class="st-copy">${p.id}</span></li>
                                                        <li class="sa-meta__item">BRAND: <span
                                                                title="Click to copy product SKU"
                                                                class="st-copy">${p.brand.brandName}</span></li>
                                                    </ul>
                                                </div>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-reset"><fmt:formatDate value="${p.createDate}" pattern="dd/MM/yyyy"/> </span></td>
                                <td><span  class="text-reset">${p.category.cateName}</span></td>
                                <td>
                                    <c:choose>
                                        <c:when test="${p.status}">
                                            <div class="badge badge-sa-success">Show</div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="badge badge-sa-danger">Hidden</div
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <div class="sa-price"><span class="sa-price__symbol">$</span><span
                                            class="sa-price__integer"><fmt:formatNumber value="${p.price}"/> </span><span
<%--                                            class="sa-price__decimal">.00</span></div>--%>
                                </td>
                                <td>
                                    <div class="dropdown"><button class="btn btn-sa-muted btn-sm"
                                                                  type="button" id="product-context-menu-0"
                                                                  data-bs-toggle="dropdown" aria-expanded="false"
                                                                  aria-label="More"><svg xmlns="http://www.w3.org/2000/svg"
                                                                                         width="3" height="13" fill="currentColor">
                                        <path
                                                d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z">
                                        </path>
                                    </svg></button>
                                        <ul class="dropdown-menu dropdown-menu-end"
                                            aria-labelledby="product-context-menu-0">
                                            <li><a class="dropdown-item" href="${contextPath}/admin/product/edit/${p.id}">Edit</a></li>
                                            <li>
                                                <hr class="dropdown-divider" />
                                            </li>
                                            <li><a class="dropdown-item text-danger" href="${contextPath}/admin/product/delete/${p.id}" onclick="return confirm('Bạn có muốn xóa không?')">Delete</a></li>
                                            </li>
                                        </ul>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
