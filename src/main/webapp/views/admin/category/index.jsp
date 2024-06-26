<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<div id="top" class="sa-app__body">
    <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
        <div class="container">
            <div class="py-5">
                <div class="row g-4 align-items-center">
                    <div class="col">
                        <h1 class="h3 m-0">Categories</h1>
                    </div>
                    <div class="col-auto d-flex"><a href="${contextPath}/admin/category/add-category" class="btn btn-primary">New
                        category</a></div>
                </div>
            </div>
            <div class="card">
                <div class="p-4">
                    <input type="text" placeholder="Start typing to search for categories" class="form-control form-control--search mx-auto" id="table-search" />
                </div>
                <div class="sa-divider"></div>
                <table class="sa-datatables-init" data-order="[[ 1, &quot;asc&quot; ]]"
                       data-sa-search-input="#table-search">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th class="min-w-15x">Name</th>
                            <th>Create date</th>
                            <th>Status</th>
                            <th class="w-min" data-orderable="false"></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach  var="c" items="${categories}">
                        <tr>
                            <td>${c.id}</td>
                            <td>
                                <div class="d-flex align-items-center">
                                    <a href=""class="me-4">
                                        <div class="sa-symbol sa-symbol--shape--rounded sa-symbol--size--lg">
                                            <img src="${contextPath}/resources/images/${c.image}" width="40" height="40" alt="" />
                                        </div>
                                    </a>
                                    <div>
                                        <a href="" class="text-reset">${c.cateName}</a>
                                    </div>
                                </div>
                            </td>
                            <td><fmt:formatDate pattern="dd/MM/yyy" value="${c.created_at}"/></td>
                            <td>
                                <c:choose>
                                    <c:when test="${c.status}">
                                        <div class="badge badge-sa-success">Show</div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="badge badge-sa-danger">Hidden</div
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td>
                                <div class="dropdown"><button class="btn btn-sa-muted btn-sm" type="button"
                                                              id="category-context-menu-0" data-bs-toggle="dropdown"
                                                              aria-expanded="false" aria-label="More"><svg
                                        xmlns="http://www.w3.org/2000/svg" width="3" height="13"
                                        fill="currentColor">
                                    <path
                                            d="M1.5,8C0.7,8,0,7.3,0,6.5S0.7,5,1.5,5S3,5.7,3,6.5S2.3,8,1.5,8z M1.5,3C0.7,3,0,2.3,0,1.5S0.7,0,1.5,0 S3,0.7,3,1.5S2.3,3,1.5,3z M1.5,10C2.3,10,3,10.7,3,11.5S2.3,13,1.5,13S0,12.3,0,11.5S0.7,10,1.5,10z">
                                    </path>
                                </svg></button>
                                    <ul class="dropdown-menu dropdown-menu-end"
                                        aria-labelledby="category-context-menu-0">
                                        <li><a class="dropdown-item" href="${contextPath}/admin/category/edit-category/${c.id}">Edit</a></li>
                                        <li>
                                            <hr class="dropdown-divider" />
                                        </li>
                                        <li><a class="dropdown-item text-danger" href="${contextPath}/admin/category/delete-category/${c.id}" onclick="return confirm('Bạn có muốn xóa không?')">Delete</a></li>
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
