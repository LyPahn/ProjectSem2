<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
   <div class="flex justify-between mb-10">
                    <div class="page-title">
                        <h3 class="mb-0 text-[28px]">My Profile</h3>
                    </div>
                </div>

                <!-- content here -->
				<f:form action="accupdate" method="post" enctype="multipart/form-data" modelAttribute="account">
				
                <div class="bg-white rounded-md overflow-hidden mb-1">
                    <div class="relative h-[150px] w-full"></div>
                    <div class="px-8 pb-8 relative">
                        <div class="-mt-[75px] mb-3 relative inline-block">
                            <img class="w-[150px] h-[150px] rounded-[14px] border-4 border-white bg-white" src="${contextPath}/${adminPicture}" alt="">
                            <input type="file" id="profilePhoto" class="hidden" name="file">
                            <label for="profilePhoto" class="inline-block w-8 h-8 rounded-full shadow-lg text-white bg-theme border-[2px] border-white text-center absolute top-[6px] right-[6px] translate-x-1/2 -translate-y-1/2 hover:cursor-pointer">
                                <svg class="-translate-y-[2px]" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16" height="16" viewBox="0 0 36.174 36.174">
                                    <path fill="currentColor" d="M23.921,20.528c0,3.217-2.617,5.834-5.834,5.834s-5.833-2.617-5.833-5.834s2.616-5.834,5.833-5.834 S23.921,17.312,23.921,20.528z M36.174,12.244v16.57c0,2.209-1.791,4-4,4H4c-2.209,0-4-1.791-4-4v-16.57c0-2.209,1.791-4,4-4h4.92 V6.86c0-1.933,1.566-3.5,3.5-3.5h11.334c1.934,0,3.5,1.567,3.5,3.5v1.383h4.92C34.383,8.244,36.174,10.035,36.174,12.244z M26.921,20.528c0-4.871-3.963-8.834-8.834-8.834c-4.87,0-8.833,3.963-8.833,8.834s3.963,8.834,8.833,8.834 C22.958,29.362,26.921,25.399,26.921,20.528z"/>
                                </svg>
                            </label>
                        </div>
                        <div class="">
                            <h5 class="text-xl mb-0">${account.fullName}</h5>
                        </div>
                    </div>
                </div>

                <div class="">
                    <div class="grid grid-cols-12 gap-6">
                        <div class="col-span-12 2xl:col-span-8">
                            <div class="py-10 px-10 bg-white rounded-md">
                                <h5 class="text-xl mb-6">Basic Information</h5>
    
                                <div class="">
                                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-5">
                                    	<f:hidden path="id"/>
                                    	<f:hidden path="password"/>
                                    	<f:hidden path="role"/>
                                    	<f:hidden path="status"/>
                                        <div class="mb-5">
                                            <p class="mb-0 text-base text-black">Họ và Tên </p>
                                            <f:input class="input w-full h-[49px] rounded-md border border-gray6 px-6 text-base text-black" path="fullName" />
                                        </div>
                                        <div class="mb-5">
                                            <p class="mb-0 text-base text-black">Tên đăng nhập </p>
                                            <f:input class="input w-full h-[49px] rounded-md border border-gray6 px-6 text-base text-black" path="userName"/>
                                        </div>
                                    </div>
                                    <div class="mb-5">
                                        <p class="mb-0 text-base text-black">Email </p>
                                        <f:input class="input w-full h-[49px] rounded-md border border-gray6 px-6 text-base text-black" path="email"/>
                                    </div>
                                    
                                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-5">
                                        <div class="mb-5">
                                            <p class="mb-0 text-base text-black">Số điện thoại </p>
                                            <f:input class="input w-full h-[49px] rounded-md border border-gray6 px-6 text-base text-black" path="phone"/>
                                        </div>
                                    </div>
                                    <div class="mb-5">
                                        <p class="mb-0 text-base text-black">Địa chỉ </p>
                                        <f:input class="input w-full h-[49px] rounded-md border border-gray6 px-6 text-base text-black" path="address"/>
                                    </div>
                                   
                                </div>
                                <div class="text-end mt-5">
                                        <button class="tp-btn px-10 py-2">Cập nhật</button>
                                    </div>
                            </div>
                            
                        </div>
                       
                    </div>
                </div>
                </f:form>