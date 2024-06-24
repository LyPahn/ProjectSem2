<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="textarea" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>
<div id="top" class="sa-app__body">
    <div class="mx-sm-2 px-2 px-sm-3 px-xxl-4 pb-6">
        <div class="container container--max--xl">
            <form:form action="${contextPath}/admin/product/save" method="post" modelAttribute="product" enctype="multipart/form-data">
            <div class="py-5">
                <div class="row g-4 align-items-center">
                    <div class="col">
                        <h1 class="h3 m-0">Add Product</h1>
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
                                    <label for="form-category/name" class="form-label">Id</label>
                                    <form:input type="text" class="form-control" id="form-category/name"  path="id"/>
                                    <form:errors path="id" cssStyle="color: red"/>
                                </div>
                                <div class="mb-4">
                                    <label for="form-category/name" class="form-label">Name</label>
                                    <form:input type="text" class="form-control" id="form-category/name"  path="productName"/>
                                    <form:errors path="productName" cssStyle="color: red"/>
                                </div>
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Status</h2>
                                </div>
                                <div class="mb-4">
                                    <label class="form-check">
                                        <form:radiobutton class="form-check-input" path="status" value="true" />
                                        <span class="form-check-label">Show</span>
                                    </label>
                                    <label class="form-check">
                                        <form:radiobutton class="form-check-input" path="status" value="false"/>
                                        <span class="form-check-label">Hidden</span>
                                    </label>

                                </div>
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Size</h2>

                                </div>
                                <div class="mb-4">
                                    <label class="form-check">
                                        <form:radiobutton class="form-check-input" path="size" value="true" />
                                        <span class="form-check-label">Show</span>
                                    </label>
                                    <label class="form-check">
                                        <form:radiobutton class="form-check-input" path="size" value="false"/>
                                        <span class="form-check-label">Hidden</span>
                                    </label>
                                </div>
                                <div class="mb-4">
                                    <label class="form-label">Description</label>
                                    <form:textarea id="editor" class="" rows="8" path="description" />
                                </div>
                            </div>
                        </div>
                        <div class="card mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Pricing</h2>
                                </div>
                                <div class="row g-4">
                                    <div class="col"><label for="form-product/price" class="form-label">Price</label>
                                        <form:input type="number" class="form-control" id="form-product/price" path="price"/>
                                        <form:errors path="price"/>
                                    </div>
                                    <div class="col"><label for="form-product/old-price" class="form-label">Old price</label>
                                        <form:input type="number" class="form-control" id="form-product/old-price" path="priceOld"/>
                                        <form:errors path="priceOld" cssStyle="color: red"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Size-Quantity</h2>
                                </div>
                                <div class="row g-4">
                                    <div class="col"><label for="form-product/old-price" class="form-label">Quantity</label>
                                        <form:input type="number" class="form-control" id="form-product/old-price" path="quantity"/>
                                        <form:errors path="quantity" cssStyle="color: red"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Images</h2>
                                </div>
                            </div>
                            <div class="mt-n5">
                                <div class="sa-divider"></div>
                                <div class="px-5 py-4 my-2">
                                    <input type="file" onchange="showImg(this, 'preview')" multiple="multiple" name="files" />Upload new image
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sa-entity-layout__sidebar">
                        <div class="card w-100">
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
                        <div class="card w-100 mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Categories</h2>
                                </div>
                                <form:select class="sa-select2 form-select" path="categoryId" items="${categories}" itemValue="id" itemLabel="cateName" />
                                <div class="mt-4 mb-n2"><a href="${contextPath}/admin/category/add-category">Add new category</a></div>
                            </div>
                        </div>
                        <div class="card w-100 mt-5">
                            <div class="card-body p-5">
                                <div class="mb-5">
                                    <h2 class="mb-0 fs-exact-18">Brands</h2>
                                </div>
                                <form:select class="sa-select2 form-select" path="brandId" items="${brands}" itemValue="id" itemLabel="brandName" />
                                <div class="mt-4 mb-n2"><a href="${contextPath}/admin/brand/add-brand">Add new Brand</a></div>
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