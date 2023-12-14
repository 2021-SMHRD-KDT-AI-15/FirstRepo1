<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
        
    <title>Charge</title>
        
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
    <link rel="stylesheet" href="assets/css/Charge.css" media="screen">
        
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
        
    <meta name="generator" content="Nicepage 6.0.3, nicepage.com">

    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|
    		Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">

    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Charge">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
    <meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>

<body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="en">
    <header class="u-clearfix u-header" id="sec-9269" data-animation-name="" data-animation-duration="0"
			data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
            <img class="u-image u-image-contain u-image-default u-image-1" src="images/222.png" alt=""
                 data-image-width="464" data-image-height="390" data-href="Main.jsp"> 
            <a href="RequireErrand.jsp"
                class="u-border-none u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-1"
                data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
                심부름 요청
            </a> 
            <a href="ErrandListService"
                class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-2"
                data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
                심부름 목록
            </a>
               
            <a href="Ranking.jsp"
                class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-3"
                data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
                랭킹
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
        <section class="u-clearfix u-section-1" id="sec-106b">
            <div class="u-clearfix u-sheet u-sheet-1">
                <div class="u-form u-login-control u-form-1">
                    <form action="ChargeService"
                        class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form"
                        source="custom" name="form" style="padding: 0px;" method="post">

                        <div class="u-form-group u-form-name u-label-top">
                            <label for="username-a30d" class="u-custom-font u-label u-text-custom-color-1 u-label-2">
                            충전금액
                            </label>
                            <input type="text" placeholder="충전금액을 입력해주세요." id="username-a30d" name="charge_money"
                                class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-input-2" required="">
                        </div>
                        
                        <div class="u-align-left u-form-group u-form-submit u-label-top">
                            <input type="submit" value="submit" class="u-form-control-hidden">
                            
                            <a href="#" class="u-active-white u-border-none u-btn u-btn-submit u-button-style u-custom-color-1 u-custom-font u-hover-white u-radius 
                            	u-text-active-custom-color-1 u-text-hover-custom-color-1 u-btn-1">
                            	충전하기
                            </a>
                        </div>
                        
                        <div id="chargeButton" style="width:50px; height:50px;"></div> 
                        <!-- 결제 api 띄우는 div -->
                        
                        <input type="hidden" value="" name="recaptchaResponse">
                    </form>
                </div>
            </div>
        </section>

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
			서울특별시 강남구 강남대로 364<br>Copyright ⓒ 2023 부릉부름.	All rights reserved.
		</p>
	</div>
</footer>
</body>
</html>