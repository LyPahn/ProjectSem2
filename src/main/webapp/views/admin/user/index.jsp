<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<div id="top" class="sa-app__body">
    <div class="mx-xxl-3 px-4 px-sm-5">
        <div class="py-5">
            <div class="row g-4 align-items-center">
                <div class="col">
                    <h1 class="h3 m-0">User</h1>
                </div>
                <div class="col-auto d-flex">
                    <a href="${contextPath}/admin/user/add-user" class="btn btn-primary">New user</a></div>
            </div>
        </div>
    </div>
    <div class="mx-xxl-3 px-4 px-sm-5 pb-6">
        <div class="sa-layout">
            <div class="sa-layout__content">
                <div class="card">
                    <div class="p-4">
                        <div class="row g-4">
                            <div class="col">
                                <input type="text" placeholder="Start typing to search for user" class="form-control form-control--search mx-auto" id="table-search" />
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
                            <th class="min-w-20x">User</th>
                            <th>Phone</th>
                            <th>Registered</th>
                            <th>Role</th>
                            <th class="w-min" data-orderable="false"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach  var="u" items="${users}">
                            <tr>
                                <td><input type="checkbox" class="form-check-input m-0 fs-exact-16 d-block"
                                           aria-label="..." /></td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <a href="" class="me-4">
                                            <div class="sa-symbol sa-symbol--shape--rounded sa-symbol--size--lg">
                                                <img src="${contextPath}/resources/images/${u.image}" width="40" height="40" alt="" />
                                            </div>
                                        </a>
                                        <div><a href="app-customer.html" class="text-reset">${u.firstName} ${u.lastName}</a>
                                            <div class="text-muted mt-n1">${u.email}</div>
                                        </div>
                                    </div>
                                </td>
                                <td><a href="" class="text-reset">${u.phone}</a></td>
                                <td>${u.created_at}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${u.role}">
                                            <div class="badge badge-sa-success">Admin</div>
                                        </c:when>
                                        <c:otherwise>
                                            <div class="badge badge-sa-danger">User</div
                                        </c:otherwise>
                                    </c:choose>
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
                                            <li><a class="dropdown-item" href="">Detail</a></li>
                                            <li><a class="dropdown-item" href="">Reset Password</a></li>
                                            <li>
                                                <hr class="dropdown-divider" />
                                            </li>
                                            <li><a class="dropdown-item text-danger" href="${contextPath}/admin/user/delete/${u.id}" onclick="return confirm('Bạn có muốn xóa không?')">Delete</a></li>
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
