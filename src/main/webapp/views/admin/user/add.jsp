<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="textarea" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>
<div id="top" class="sa-app__body">
    <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
        <div class="container container--max--xl">
            <form:form action="${contextPath}/admin/user/save" method="post" modelAttribute="user" enctype="multipart/form-data">
            <div class="py-5">
                <div class="row g-4 align-items-center">
                    <div class="col">
                        <h1 class="h3 m-0">Add User</h1>
                    </div>
                    <div class="col-auto d-flex">
                        <button type="submit" class="btn btn-primary">Save</button></div>
                </div>
            </div>
            <div class="sa-entity-layout"
                 data-sa-container-query="{&quot;920&quot;:&quot;sa-entity-layout--size--md&quot;,&quot;1100&quot;:&quot;sa-entity-layout--size--lg&quot;}">
                <div class="sa-entity-layout__body">
                    <div class="sa-entity-layout__main">
                        <div class="card">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">ADD</h2>
                                </div>
                                <div class="mb-4">
                                    <label for="form-category/name" class="form-label">User Name</label>
                                    <form:input type="text" class="form-control" id="form-category/name"  path="username"/>
                                </div>
                                <div class="mb-4">
                                    <label for="form-category/name" class="form-label">Email</label>
                                    <form:input type="text" class="form-control" id="form-category/name"  path="email"/>
                                </div>
                                <div class="mb-4">
                                    <label for="form-category/name" class="form-label">password</label>
                                    <form:input type="password" class="form-control" id="form-category/name"  path="password"/>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Fist/Last Name</h2>
                                </div>
                                <div class="row g-4">
                                    <div class="col"><label for="form-product/price" class="form-label">First Name</label>
                                        <form:input type="text" class="form-control" id="form-product/price" path="firstName"/>
                                    </div>
                                    <div class="col"><label for="form-product/old-price" class="form-label">Last Name</label>
                                        <form:input type="text" class="form-control" id="form-product/old-price" path="lastName"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-5">
                            <div class="card-body p-5">
                                <div class="row g-4">
                                    <div class="col"><label for="form-product/price" class="form-label">Address</label>
                                        <form:input type="text" class="form-control" id="form-product/price" path="address"/>
                                    </div>
                                    <div class="col"><label for="form-product/old-price" class="form-label">Phone</label>
                                        <form:input type="text" class="form-control" id="form-product/old-price" path="phone"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sa-entity-layout__sidebar">
                        <div class="card w-100">
                            <div class="card-body">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Status</h2>
                                </div>
                                <div class="mb-4">
                                    <label class="form-check">
                                        <form:radiobutton class="form-check-input" path="status" checked="" value="true" />
                                        <span class="form-check-label">Show</span>
                                    </label>
                                    <label class="form-check">
                                        <form:radiobutton class="form-check-input" path="status" value="false"/>
                                        <span class="form-check-label">Hidden</span>
                                    </label>
                                </div>
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Role</h2>
                                </div>
                                <div class="mb-4">
                                    <label class="form-check">
                                        <form:radiobutton class="form-check-input" path="role" checked="" value="true" />
                                        <span class="form-check-label">Admin</span>
                                    </label>
                                    <label class="form-check">
                                        <form:radiobutton class="form-check-input" path="role" value="false"/>
                                        <span class="form-check-label">User</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="card w-100 mt-5">
                            <div class="card-body">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Image</h2>
                                </div>
                                <div class="border p-4 d-flex justify-content-center">
                                    <div class="max-w-20x">
                                        <img src="${contextPath}/resources/admin/images/upload.png" class="w-100 h-auto" width="320" height="320" alt="" id="preview" /></div>
                                </div>
                                <div class="mt-4 mb-n2">
                                    <input type="file" name="file" class="me-3 pe-2" onchange="showImg(this, 'preview')" />chọn ảnh
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<script type="">
    function showImg(input, target) {
        let file = input.files[0];
        let reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = function() {
            let img = document.getElementById(target);
            // can also use "this.result"
            img.src = reader.result;
        }
    }
</script>
<script>
    ClassicEditor.create(document.querySelector('#editor'))
        .then(editor => {
            console.log(editor);
        })
        .catch(error => {
            console.error(error);
        });


</script>