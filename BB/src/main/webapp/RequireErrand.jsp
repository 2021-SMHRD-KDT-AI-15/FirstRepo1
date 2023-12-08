<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<meta name="keywords" content="​Join Our Newsletter">
	<meta name="description" content="">
	<title>RequireErrand</title>
	<link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
	<link rel="stylesheet" href="assets/css/RequireErrand.css"
		media="screen">
	<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
	<script class="u-script" type="text/javascript" src="nicepage.js"
		defer=""></script>
	<meta name="generator" content="Nicepage 6.0.3, nicepage.com">
	
	<link id="u-theme-google-font" rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
	
	<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "이거 지우면 좆댄다 복사해서 써라"
	}</script>
	
	<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8a69423df911a689eb5f9a2b94bf4f50"></script>
    <script src="assets/js/RequireErrandAddress.js"></script>
	
	<meta name="theme-color" content="#478ac9">
	<meta property="og:title" content="RequireErrand">
	<meta property="og:description" content="">
	<meta property="og:type" content="website">
	<meta data-intl-tel-input-cdn-path="intlTelInput/">

</head>
<body data-path-to-root="./" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en">
	<header class="u-clearfix u-header" id="sec-9269"
		data-animation-name="" data-animation-duration="0"
		data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="RequireErrand.jsp"
				class="u-border-none u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-1"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">심부름 요청</a> <img
				class="u-image u-image-contain u-image-default u-image-1"
				src="images/222.png" alt="" data-image-width="464"
				data-image-height="390" data-href="Main.jsp"> <a
				href="ErrandListService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-2"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">심부름 목록</a> <a
				href="RankingService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-3"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">&nbsp;랭킹&nbsp;</a>
			<a href="ChatService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-4"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">채팅</a> <a
				href="Charge.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-5"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">충전</a> <a
				href="MyInfoService"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-6"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">마이 페이지</a>
		</div>
	</header>
	<section class="u-clearfix u-gradient u-section-1" id="carousel_35d5">
		<div class="u-clearfix u-sheet u-sheet-1">
			<div
				class="custom-expanded u-align-center u-border-11 u-border-no-left u-border-no-right u-border-no-top u-border-white u-container-style u-custom-border u-group u-radius u-shape-round u-white u-group-1">
				<div class="u-container-layout u-valign-top u-container-layout-1">
					<div class="u-form u-login-control u-form-1">
						<form action="RequireErrandService"
							class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form"
							source="custom" name="form" style="padding: 0px;" method="post">
							<div class="u-form-group u-form-name u-label-top">
								<label for="username-a30d"
									class="u-custom-font u-label u-text-custom-color-1 u-label-1">심부름
									제목 입력</label> <input type="text" placeholder="제목을 입력해주세요."
									id="username-a30d" name="title"
									class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-input-1"
									required="">
							</div>
							<div class="u-form-group u-label-top">
								<label for="password-a30d"
									class="u-custom-font u-label u-text-custom-color-1 u-label-2">요구
									시작 시한</label> <input type="date" placeholder="시작 시간 입력"
									id="password-a30d" name="req_date"
									class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-input-2"
									required="">
							</div>
							<div class="u-form-group u-label-top u-form-group-3">
								<label for="text-1ce3"
									class="u-custom-font u-label u-text-custom-color-1 u-label-3">요구
									마감 시한</label> <input type="date" id="text-1ce3" name="want_date"
									class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-input-3"
									placeholder="희망 마감 시한 입력">
							</div>
							<div class="u-form-group u-label-top u-form-group-4">
								<label for="text-413d"
									class="u-custom-font u-label u-text-custom-color-1 u-label-4">보상할
									금액</label> <input type="text" placeholder="금액을 입력해주세요" id="text-413d"
									name="price"
									class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font  u-input u-input-rectangle u-input-4">
							</div>
							<div class="u-form-group u-label-top u-form-group-5">
								<label for="text-2d79"
									class="u-custom-font u-label u-text-custom-color-1 u-label-5">요청
									위치</label> <input type="text" placeholder="주소 입력" id="text-2d79"
									name="req_location"
									class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font  u-input u-input-rectangle u-input-5">
									
							<div id="map" style="width:300px;height:350px;"></div>
							
							</div>
							<div class="u-form-group u-label-top u-form-group-6">
								<label for="text-76e2"
									class="u-custom-font u-label u-text-custom-color-1 u-label-6">요청
									내용</label> <input type="text" placeholder="내용 입력" id="text-76e2"
									name="content"
									class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font  u-input u-input-rectangle u-input-6">
							</div>
							<div
								class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-7">
								<label for="select-e794"
									class="u-custom-font u-label u-text-custom-color-1 u-label-7">행정구
									선택</label>
								<div class="u-form-select-wrapper">
									<select id="select-e794" name="location_ctgr"
										class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font  u-input u-input-rectangle u-input-7">
										<option data-calc="광산구" value="광산구">광산구</option>
										<option data-calc="동구" value="동구">동구</option>
										<option data-calc="서구" value="서구">서구</option>
										<option data-calc="남구" value="남구">남구</option>
										<option data-calc="북구" value="북구">북구</option>
									</select>
									<svg class="u-caret u-caret-svg" version="1.1" id="Layer_1"
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										width="16px" height="16px" viewBox="0 0 16 16"
										style="fill: currentColor;" xml:space="preserve">
										<polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
								</div>
							</div>
							<div
								class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-8">
								<label for="select-f578"
									class="u-custom-font u-label u-text-custom-color-1 u-label-8">카테고리</label>
								<div class="u-form-select-wrapper">
									<select id="select-f578" name="errand_ctgr"
										class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-input-8">
										<option value="배달/장보기" data-calc="">배달/장보기</option>
										<option value="청소/집안일" data-calc="">청소/집안일</option>
										<option value="설치/조립/운반" data-calc="">설치/조립/운반</option>
										<option value="동행/돌봄" data-calc="">동행/돌봄</option>
										<option value="벌레/쥐잡기" data-calc="">벌레/쥐잡기</option>
										<option value="역할대행" data-calc="">역할대행</option>
										<option value="운전/카풀" data-calc="">운전/카풀</option>
										<option value="과외/알바" data-calc="">과외/알바</option>
									</select>
									<svg class="u-caret u-caret-svg" version="1.1" id="Layer_1"
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										width="16px" height="16px" viewBox="0 0 16 16"
										style="fill: currentColor;" xml:space="preserve">
										<polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
								</div>
							</div>

							<div class="u-form-checkbox u-form-group u-label-top">
								<input type="checkbox" id="checkbox-a30d" name="remember"
									class="u-active-palette-1-base u-field-input"> <label
									for="checkbox-a30d" class="u-field-label u-form-control-hidden"
									style="font-size: 1rem; letter-spacing: 0px; text-transform: none"></label>
							</div>
							<div class="u-form-group u-form-submit u-label-top">
								<input type="submit" value="submit"
									class="u-form-control-hidden"> <a
									href="RequireErrandService"
									class="u-active-white u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-custom-font u-hover-white u-radius-50 u-text-active-custom-color-1 u-text-hover-custom-color-1 u-btn-1">요청하기</a>
							</div>
							<input type="hidden" value="" name="recaptchaResponse">
						</form>
					</div>
					<div
						class="u-container-style u-expanded-width u-group u-radius u-shape-round u-white u-group-2">
						<div
							class="u-container-layout u-valign-bottom u-container-layout-2">
							<a href="Main.jsp"
								class="u-active-white u-btn u-button-style u-custom-color-1 u-custom-font u-hover-white u-text-active-custom-color-1 u-text-hover-custom-color-1 u-btn-2"
								data-animation-name="" data-animation-duration="0"
								data-animation-delay="0" data-animation-direction="">돌아가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-755f">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">
				&nbsp;<a href="https://pleasehelp.co.kr/O010101.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1">개인정보처리방침</a>
				<br>&nbsp;<a href="https://pleasehelp.co.kr/O010102.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2">서비스
					이용약관</a> <br>&nbsp;<a href="https://pleasehelp.co.kr/O010103.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3">위치기반서비스
					이용약관</a> <br>&nbsp;<a href="https://pleasehelp.co.kr/O010104.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4">업무위수탁약관</a>
				<br>&nbsp;<a href="https://pleasehelp.co.kr/O010105.html"
					class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-5">주식분할
					공고문</a> <br> <br>(주)ICㅣ대표 윤수민ㅣ대표 번호: 010-9918-0000<br>대표
				메일: vroong@naver.com<br>사업자등록번호:123-456-789<br>통신판매번호:
				2023-4777<br>서울특별시 강남구 강남대로 364<br>Copyright ⓒ 2023 부릉부름.
				All rights reserved.
			</p>
		</div>
	</footer>
	<section class="u-backlink u-clearfix u-grey-80">
		<a class="u-link" href="https://nicepage.com/website-templates"
			target="_blank"> <span>Web Templates</span>
		</a>
		<p class="u-text">
			<span>created with</span>
		</p>
		<a class="u-link" href="" target="_blank"> <span>Web Design
				Software</span>
		</a>.
	</section>


</body>
</html>
