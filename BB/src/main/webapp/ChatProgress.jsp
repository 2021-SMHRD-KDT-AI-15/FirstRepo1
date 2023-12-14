<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="False"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org" xmlns:sec="http://www.thymeleaf.org/extras/spring-security">

<head>
    <title>ChatProgress</title>
    
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="generator" content="Nicepage 6.0.3, nicepage.com">
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="MyInfo">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
    <meta data-intl-tel-input-cdn-path="intlTelInput/">
    
    <link rel="stylesheet" href="assets/css/ChatProgress.css">
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
    <link id="u-theme-google-font" rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|
        Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>

    
</head>

<body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="en">
    <header class="u-clearfix u-header" id="sec-9269"
		data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="RequireErrand.jsp"
				class="u-border-none u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-1"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">
				심부름 요청
			</a>
			<img class="u-image u-image-contain u-image-default u-image-1"
				src="images/222.png" alt="" data-image-width="464" data-image-height="390" data-href="Main.jsp"> 
			<a href="ErrandListService"	
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-2"
				data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
				심부름 목록
			</a>
			<a href="Ranking.jsp" 
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-3"
				data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
				&nbsp;랭킹&nbsp;
			</a>
			<a href="ChatListService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-4"
				data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
				채팅
			</a>
			<a href="Charge.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-5"
				data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
				충전
			</a>
			<a href="MyInfoService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-6"
				data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
				마이 페이지
			</a>
		</div>
	</header>
    </head>
    <body>
        <div class="container">
            <!-- EL을 이용해 쿼리스트링에 담긴 데이터 집어넣기 -->
            <h1 id="room" style="display: none;">
            	${param.room}
            </h1>
            <p id="client" style="display: none;">
            	${param.client_no}
            </p>
            <p id="subject" style="display: none;">
            ${param.subject_no}
            </p>

            <div class="row">
                <div class="col-lg-2"></div>
                <div class="col-lg-8">
                    <div class="card" style="height: 600px;">
                        <!-- chat body -->
                        <div class="card-body" style="overflow-y: scroll;" id="chatBody">
                            <div id="msgArea">

                                <!-- 메세지가 작성되는 영역 -->

                                <!-- 내가 보낸 메세지 예시 -->
                                <div class='row'>
                                    <div class='col-sm-6'></div>
                                    <div class='col-sm-6'>
                                        <div class='alert alert-secondary'>
                                        </div>
                                    </div>
                                </div>

                                <!-- 남이 보낸 메세지 예시 -->
                                <div class='row'>
                                    <div class='col-6'>
                                        <div class='alert alert-warning'>
                                        </div>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <!-- chat body end -->
                        <!-- chat input -->
                        <div style="text-align: center;">

                            <div class="row">
                                <div class="col-lg-1"></div>
                                <div class="input-group col-lg-10">

                                    <!-- 메세지 전송 버튼 -->
                                    <input type="text" id="msg" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2">

                                    <div class="input-group-append">
                                        <button class="btn btn-sm btn-info frame custom-btn" type="button" id="button-send">
                                        전송
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- chat input end -->
                    </div>
                </div>
            </div>
            <div class="col-lg-2"></div>
        </div>

<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-755f">
   <div class="u-clearfix u-sheet u-sheet-1">
      <p class="u-small-text u-text u-text-variant u-text-1">&nbsp;
         <a href="https://pleasehelp.co.kr/O010101.html"
            class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1">
            개인정보처리방침
         </a><br>
         
         <a href="https://pleasehelp.co.kr/O010102.html"
            class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2">
            서비스 이용약관
         </a><br>
         
         <a href="https://pleasehelp.co.kr/O010103.html"
            class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3">
            위치기반서비스 이용약관
         </a><br>
         
         <a href="https://pleasehelp.co.kr/O010104.html"
            class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4">
            업무위수탁약관
         </a><br>
         
         <a href="https://pleasehelp.co.kr/O010105.html"
            class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-5">
            주식분할 공고문
         </a><br>
         
         <a href="PoliceInquiryService"
            class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-6"
            style="font-size: 30px">
            경찰서 조회
         </a><br><br>
         
         (주)ICㅣ대표 윤수민ㅣ대표 번호: 010-9918-0000<br>
         대표 메일: vroong@naver.com<br>
         사업자등록번호:123-456-789<br>
         통신판매번호: 2023-4777<br>
         서울특별시 강남구 강남대로 364<br>Copyright ⓒ 2023 부릉부름. All rights reserved.
      </p>
   </div>
</footer>
<script src="assets/js/chat.js"></script>
</body>
</html>