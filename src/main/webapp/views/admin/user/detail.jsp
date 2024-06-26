<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<c:set var="total" value="0"/>
<div id="top" class="sa-app__body">
    <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
        <div class="container container--max--xl">
            <div class="py-5">
                <div class="row g-4 align-items-center">
                    <div class="col">
                        <h1 class="h3 m-0">${user.username}</h1>
                    </div>
                </div>
            </div>
            <div class="sa-entity-layout"
                 data-sa-container-query="{&quot;920&quot;:&quot;sa-entity-layout--size--md&quot;}">
                <div class="sa-entity-layout__body">
                    <div class="sa-entity-layout__sidebar">
                        <div class="card">
                            <div class="card-body d-flex flex-column align-items-center">
                                <div class="pt-3">
                                    <div class="sa-symbol sa-symbol--shape--circle"
                                         style="--sa-symbol--size:6rem"><img
                                            src="${contextPath}/resources/images/${user.image}" width="96"
                                            height="96" alt="" /></div>
                                </div>
                                <div class="text-center mt-4">
                                    <div class="fs-exact-16 fw-medium">${user.username}</div>
                                    <div class="fs-exact-13 text-muted">
                                        <div class="mt-1"><a href="#">${user.email}</a></div>
                                        <div class="mt-1">${user.phone}</div>
                                    </div>
                                </div>
                                <div class="sa-divider my-5"></div>
                                <div class="w-100">
                                    <dl class="list-unstyled m-0 mt-4">
                                        <dt class="fs-exact-14 fw-medium">Registered</dt>
                                        <dd class="fs-exact-13 text-muted mb-0 mt-1">2 months ago</dd>
                                    </dl>
                                    <dl class="list-unstyled m-0 mt-4">
                                        <dt class="fs-exact-14 fw-medium">Email Marketing</dt>
                                        <dd class="fs-exact-13 text-muted mb-0 mt-1">Subscribed</dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sa-entity-layout__main">
                        <div class="sa-card-area"><textarea class="sa-card-area__area" rows="2"
                                                            placeholder="Notes about customer"></textarea>
                            <div class="sa-card-area__card"><svg xmlns="http://www.w3.org/2000/svg"
                                                                 width="1em" height="1em" viewBox="0 0 24 24" fill="none"
                                                                 stroke="currentColor" stroke-width="2" stroke-linecap="round"
                                                                 stroke-linejoin="round" class="feather feather-edit">
                                <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7">
                                </path>
                                <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z">
                                </path>
                            </svg></div>
                        </div>
                        <div class="card mt-5">
                            <div
                                    class="card-body px-5 py-4 d-flex align-items-center justify-content-between">
                                <h2 class="mb-0 fs-exact-18 me-4">Orders</h2>
                            </div>
                            <div class="table-responsive">
                                <table class="sa-table text-nowrap">
                                    <tbody>
                                    <c:forEach var="o" items="${order}">
                                        <c:set var="total" value="${total+o.price}"/>
                                        <tr>
                                            <td><a href="app-order.html">#${o.id}</a></td>
                                            <td>${o.orderDate}</td>
                                            <td>${o.orderStatusId.status}</td>
                                            <td>$${o.price}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="sa-divider"></div>
                            <div class="px-5 py-4 text-center">Total spent $${total}</div>
                        </div>
                        <div class="card mt-5">
                            <div
                                    class="card-body px-5 py-4 d-flex align-items-center justify-content-between">
                                <h2 class="mb-0 fs-exact-18 me-4">Wishlist</h2>
                            </div>
                            <div class="table-responsive">
                                <table class="sa-table text-nowrap">
                                    <tbody>
                                    <c:forEach var="w" items="${wishlist}" varStatus="loop">
                                        <tr>
                                            <td><a href="#">#${loop.count}</a></td>
                                            <td>${w.product.productName}</td>
                                            <td>${w.product.status}</td>
                                            <td>$${w.product.price}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card mt-5">
                            <div
                                    class="card-body px-5 py-4 d-flex align-items-center justify-content-between">
                                <h2 class="mb-0 fs-exact-18 me-4">Addresses</h2>
                            </div>
                            <div class="sa-divider"></div>
                            <div class="px-5 py-3 my-2 d-flex align-items-center justify-content-between">
                                <div>
                                    <div>${user.username}</div>
                                    <div class="text-muted fs-exact-14 mt-1">${user.address}</div>
                                </div>
                                <div>
                                    <div class="dropdown"><button class="btn btn-sa-muted btn-sm"
                                                                  type="button" id="address-context-menu-0"
                                                                  data-bs-toggle="dropdown" aria-expanded="false"
                                                                  aria-label="More"><svg xmlns="http://www.w3.org/2000/svg"
                                                                                         width="3" height="13" fill="currentColor">
                                        <path
                                                d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z">
                                        </path>
                                    </svg></button>
                                        <ul class="dropdown-menu dropdown-menu-end"
                                            aria-labelledby="address-context-menu-0">
                                            <li><a class="dropdown-item" href="#">Edit</a></li>
                                            <li><a class="dropdown-item" href="#">Duplicate</a></li>
                                            <li><a class="dropdown-item" href="#">Add tag</a></li>
                                            <li><a class="dropdown-item" href="#">Remove tag</a></li>
                                            <li>
                                                <hr class="dropdown-divider" />
                                            </li>
                                            <li><a class="dropdown-item text-danger" href="#">Delete</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>