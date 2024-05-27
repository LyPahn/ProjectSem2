<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="textarea" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.servletContext.contextPath}" scope="session" />
<div id="top" class="sa-app__body">
    <div class="mx-xxl-3 px-4 px-sm-5">
        <div class="py-5">
            <div class="row g-4 align-items-center">
                <div class="col">
                    <h1 class="h3 m-0">Detail Product</h1>
                </div>
            </div>
        </div>
    </div>
    <div class="mx-xxl-3 px-4 px-sm-5 pb-6">
        <div class="sa-layout">
            <div class="sa-layout__content d-flex">
                <div class="card flex-grow-1 mx-sm-0 mx-n4">
                    <div class="sa-divider"></div>
                    <div class="p-md-5 p-4">
                        <div class="">
                            <div class="fs-6 fw-medium mb-3">Folders</div>
                            <div class="sa-grid">
                                <div class="sa-grid__body">
                                    <div class="sa-grid__item"><a href="#" class="sa-folder">
                                        <div class="sa-folder__image"><svg width="1em" height="1em">
                                            <use
                                                    xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#folder-fill">
                                            </use>
                                        </svg></div>
                                        <div class="sa-folder__info">
                                            <div class="sa-folder__name">Pictures</div>
                                            <div class="sa-folder__meta">275 files</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a href="#" class="sa-folder">
                                        <div class="sa-folder__image"><svg width="1em" height="1em">
                                            <use
                                                    xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#folder-fill">
                                            </use>
                                        </svg></div>
                                        <div class="sa-folder__info">
                                            <div class="sa-folder__name">Documents</div>
                                            <div class="sa-folder__meta">12 files</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a href="#" class="sa-folder">
                                        <div class="sa-folder__image"><svg width="1em" height="1em">
                                            <use
                                                    xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#folder-fill">
                                            </use>
                                        </svg></div>
                                        <div class="sa-folder__info">
                                            <div class="sa-folder__name">Programs</div>
                                            <div class="sa-folder__meta">3 files</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a href="#" class="sa-folder">
                                        <div class="sa-folder__image"><svg width="1em" height="1em">
                                            <use
                                                    xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#folder-fill">
                                            </use>
                                        </svg></div>
                                        <div class="sa-folder__info">
                                            <div class="sa-folder__name">Videos</div>
                                            <div class="sa-folder__meta">48 files</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a href="#" class="sa-folder">
                                        <div class="sa-folder__image"><svg width="1em" height="1em">
                                            <use
                                                    xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#folder-fill">
                                            </use>
                                        </svg></div>
                                        <div class="sa-folder__info">
                                            <div class="sa-folder__name">Downloads</div>
                                            <div class="sa-folder__meta">7 files</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a href="#" class="sa-folder">
                                        <div class="sa-folder__image"><svg width="1em" height="1em">
                                            <use
                                                    xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#folder-fill">
                                            </use>
                                        </svg></div>
                                        <div class="sa-folder__info">
                                            <div class="sa-folder__name">Music</div>
                                            <div class="sa-folder__meta">378 files</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a href="#" class="sa-folder">
                                        <div class="sa-folder__image"><svg width="1em" height="1em">
                                            <use
                                                    xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#folder-fill">
                                            </use>
                                        </svg></div>
                                        <div class="sa-folder__info">
                                            <div class="sa-folder__name">Favorites</div>
                                            <div class="sa-folder__meta">51 files</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a href="#" class="sa-folder">
                                        <div class="sa-folder__image"><svg width="1em" height="1em">
                                            <use
                                                    xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#folder-fill">
                                            </use>
                                        </svg></div>
                                        <div class="sa-folder__info">
                                            <div class="sa-folder__name">Contacts</div>
                                            <div class="sa-folder__meta">192 files</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                </div>
                            </div>
                        </div>
                        <div class="mt-5">
                            <div class="fs-6 fw-medium mb-3">Files</div>
                            <div class="sa-grid">
                                <div class="sa-grid__body">
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--jpg"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__image"><img
                                                        src="images/files/file-1-320x180.jpg" alt=""
                                                        width="320" height="180" /></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                jpg</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">mountain-elbrus.jpg</div>
                                            <div class="sa-file__meta">578.07 KB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--jpg"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__image"><img
                                                        src="images/files/file-2-320x180.jpg" alt=""
                                                        width="320" height="180" /></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                jpg</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">engine.jpg</div>
                                            <div class="sa-file__meta">895.69 KB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--jpg"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__image"><img
                                                        src="images/files/file-3-320x180.jpg" alt=""
                                                        width="320" height="180" /></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                jpg</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">rusty-truck.jpg</div>
                                            <div class="sa-file__meta">437.33 KB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--jpg"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__image"><img
                                                        src="images/files/file-4-320x180.jpg" alt=""
                                                        width="320" height="180" /></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                jpg</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">wrench.jpg</div>
                                            <div class="sa-file__meta">951.04 KB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--jpg"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__image"><img
                                                        src="images/files/file-5-320x180.jpg" alt=""
                                                        width="320" height="180" /></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                jpg</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">panorama-of-moscow.jpg</div>
                                            <div class="sa-file__meta">197.62 KB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--docx"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-word-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                docx</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">diploma.docx</div>
                                            <div class="sa-file__meta">275.87 KB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--xlsx"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-excel-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                xlsx</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">month-report.xlsx</div>
                                            <div class="sa-file__meta">24.30 KB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--pdf"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-pdf-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                pdf</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">invoice-a972.pdf</div>
                                            <div class="sa-file__meta">1.76 MB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--jpg"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-image-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                jpg</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">pillars-of-creation.jpg</div>
                                            <div class="sa-file__meta">793.64 KB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--txt"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-text-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                txt</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">passwords.txt</div>
                                            <div class="sa-file__meta">284 B</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--mkv"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-play-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                mkv</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">green-mile.mkv</div>
                                            <div class="sa-file__meta">15.43 GB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--mp3"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-music-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                mp3</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">ppk-resurrection.mp3</div>
                                            <div class="sa-file__meta">2.55 MB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--zip"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-zip-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                zip</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">stroyka-vue.zip</div>
                                            <div class="sa-file__meta">2.10 MB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--zip"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-zip-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                zip</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">stroyka-react.zip</div>
                                            <div class="sa-file__meta">4.13 MB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--zip"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-zip-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                zip</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">stroyka-angular.zip</div>
                                            <div class="sa-file__meta">2.17 MB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__item"><a class="sa-file sa-file--type--zip"
                                                                  data-bs-toggle="offcanvas" href="#fileManagerDetails"
                                                                  role="button" aria-controls="fileManagerDetails">
                                        <div class="sa-file__thumbnail sa-box">
                                            <div class="sa-box__body">
                                                <div class="sa-box__container sa-file__icon"><svg
                                                        width="1em" height="1em">
                                                    <use
                                                            xlink:href="vendor/bootstrap-icons/bootstrap-icons.svg#file-earmark-zip-fill">
                                                    </use>
                                                </svg></div>
                                            </div>
                                            <div
                                                    class="sa-file__badge badge badge-sa-dark text-uppercase">
                                                zip</div>
                                        </div>
                                        <div class="sa-file__info">
                                            <div class="sa-file__name">stroyka-html.zip</div>
                                            <div class="sa-file__meta">27.22 MB</div>
                                        </div>
                                    </a></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                    <div class="sa-grid__filler" role="presentation"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="offcanvas offcanvas-end offcanvas-sa-card" tabindex="-1" id="fileManagerDetails"
         aria-labelledby="fileManagerDetailsLabel">
        <div class="offcanvas-header py-3">
            <div class="my-2">
                <h5 class="offcanvas-title fs-exact-18" id="fileManagerDetailsLabel">stroyka-admin.jpg</h5>
                <div class="fs-exact-14 text-muted mt-1 mb-n1">Compressed ZIP folder</div>
            </div><button type="button" class="sa-close sa-close--modal" data-bs-dismiss="offcanvas"
                          aria-label="Close"></button>
        </div>
        <div class="offcanvas-body" data-simplebar="">
            <div class="border p-4 d-flex justify-content-center mb-4">
                <div class="max-w-20x"><img src="images/products/product-7-320x320.jpg" class="w-100 h-auto"
                                            width="320" height="320" alt="" /></div>
            </div>
            <div class="fs-exact-14 text-muted mb-2 pb-1">Shared with:</div>
            <div class="mb-4">
                <div class="sa-symbols-stack">
                    <div class="sa-symbols-stack__item sa-symbol sa-symbol--shape--circle"><img
                            src="images/customers/customer-9-32x32.jpg" width="32" height="32" alt="" />
                    </div>
                    <div class="sa-symbols-stack__item sa-symbol sa-symbol--shape--circle"><img
                            src="images/customers/customer-7-32x32.jpg" width="32" height="32" alt="" />
                    </div>
                    <div class="sa-symbols-stack__item sa-symbol sa-symbol--shape--circle"><img
                            src="images/customers/customer-11-32x32.jpg" width="32" height="32" alt="" />
                    </div>
                </div>
            </div>
            <table class="w-100 fs-exact-14">
                <tbody>
                <tr>
                    <th class="py-1 fw-normal text-muted">Type</th>
                    <td class="py-1 ps-4">Compressed Archive</td>
                </tr>
                <tr>
                    <th class="py-1 fw-normal text-muted">Size</th>
                    <td class="py-1 ps-4">28 MB</td>
                </tr>
                <tr>
                    <th class="py-1 fw-normal text-muted">Storage used</th>
                    <td class="py-1 ps-4">28 MB</td>
                </tr>
                <tr>
                    <th class="py-1 fw-normal text-muted">Location</th>
                    <td class="py-1 ps-4">My Drive</td>
                </tr>
                <tr>
                    <th class="py-1 fw-normal text-muted">Owner</th>
                    <td class="py-1 ps-4">Veselovsky</td>
                </tr>
                <tr>
                    <th class="py-1 fw-normal text-muted">Modified</th>
                    <td class="py-1 ps-4">30 Apr 2021</td>
                </tr>
                <tr>
                    <th class="py-1 fw-normal text-muted">Created</th>
                    <td class="py-1 ps-4">8 Jan 2021</td>
                </tr>
                </tbody>
            </table>
            <div class="sa-divider my-4"></div><label for="file-manager/file-description"
                                                      class="form-label">Description</label><textarea placeholder="File description"
                                                                                                      class="form-control" rows="3" id="file-manager/file-description"></textarea>
            <div class="sa-divider my-4"></div>
            <div class="hstack gap-3"><button type="button"
                                              class="btn btn-primary flex-grow-1">Download</button><button type="button"
                                                                                                           class="btn btn-secondary flex-grow-1">Delete</button></div>
        </div>
    </div>
</div>