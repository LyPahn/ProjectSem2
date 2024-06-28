<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div id="top" class="sa-app__body">
    <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
        <div class="container container--max--xl">
            <div class="py-5">
                <div class="row g-4 align-items-center">
                    <div class="col">
                        <nav class="mb-2" aria-label="breadcrumb">
                            <ol class="breadcrumb breadcrumb-sa-simple">
                                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                <li class="breadcrumb-item"><a href="app-orders-list.html">Orders</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Order #80294</li>
                            </ol>
                        </nav>
                        <h1 class="h3 m-0">Order #${order.id}</h1>
                    </div>
                </div>
            </div>
            <div class="sa-page-meta mb-5">
                <div class="sa-page-meta__body">
                    <div class="sa-page-meta__list">
                        <div class="sa-page-meta__item">${order.orderDate}</div>
                        <div class="sa-page-meta__item">6 items</div>
                        <div class="sa-page-meta__item">Total $5,882.00</div>
                        <div class="sa-page-meta__item d-flex align-items-center fs-6"><span
                                class="badge badge-sa-success me-2">Paid</span><span
                                class="badge badge-sa-warning me-2">Partially Fulfilled</span></div>
                    </div>
                </div>
            </div>
            <div class="sa-entity-layout"
                 data-sa-container-query="{&quot;920&quot;:&quot;sa-entity-layout--size--md&quot;}">
                <div class="sa-entity-layout__body">
                    <div class="sa-entity-layout__main">
                        <div class="sa-card-area"><textarea class="sa-card-area__area" rows="2"
                                                            placeholder="Notes about order"></textarea>
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
                                <h2 class="mb-0 fs-exact-18 me-4">Items</h2>
                                <div class="text-muted fs-exact-14"><a href="#">Edit items</a></div>
                            </div>
                            <div class="table-responsive">
                                <table class="sa-table">
                                    <tbody>
                                        <c:forEach var="o" items="${orderItem}">
                                            <tr>
                                                <td class="min-w-20x">
                                                    <div class="d-flex align-items-center"><img
                                                            src="${contextPath}/resources/images/${o.product.image}"
                                                            class="me-4" width="40" height="40" alt="" /><a
                                                            href="app-product.html" class="text-reset">${o.product.productName}</a></div>
                                                </td>
                                                <td class="text-end">
                                                    <div class="sa-price"><span
                                                            class="sa-price__symbol">$</span><span
                                                            class="sa-price__integer">${o.product.price}</span><span
                                                    </div>
                                                </td>
                                                <td class="text-end">${o.quantity}</td>
                                                <td class="text-end">
                                                    <div class="sa-price"><span
                                                            class="sa-price__symbol">$</span><span
                                                            class="sa-price__integer">${o.price}</span><span
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                    <tbody>
                                    <tr>
                                        <td colSpan="3">Total</td>
                                        <td class="text-end">
                                            <div class="sa-price"><span
                                                    class="sa-price__symbol">$</span><span
                                                    class="sa-price__integer">${order.price}</span><span>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="sa-entity-layout__sidebar">
                        <div class="card">
                            <div
                                    class="card-body d-flex align-items-center justify-content-between pb-0 pt-4">
                                <h2 class="fs-exact-16 mb-0">Customer</h2><a href="#"
                                                                             class="fs-exact-14">Edit</a>
                            </div>
                            <div class="card-body d-flex align-items-center pt-4">
                                <div class="sa-symbol sa-symbol--shape--circle sa-symbol--size--lg"><img
                                        src="${contextPath}/resources/images/${order.user.image}" width="40" height="40"
                                        alt="" /></div>
                                <div class="ms-3 ps-2">
                                    <div class="fs-exact-14 fw-medium">${order.user.username}</div>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-5">
                            <div
                                    class="card-body d-flex align-items-center justify-content-between pb-0 pt-4">
                                <h2 class="fs-exact-16 mb-0">Contact person</h2><a href="#"
                                                                                   class="fs-exact-14">Edit</a>
                            </div>
                            <div class="card-body pt-4 fs-exact-14">
                                <div>${order.user.firstName}${order.user.lastName}</div>
                                <div class="mt-1"><a href="#">${order.user.email}</a></div>
                                <div class="text-muted mt-1">${order.user.phone}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>