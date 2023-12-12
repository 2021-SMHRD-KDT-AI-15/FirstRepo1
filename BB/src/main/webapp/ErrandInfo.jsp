<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="">
<meta name="description" content="">
<title>ErrandInfo</title>
<link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/ErrandInfo.css" media="screen">
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js"
	defer=""></script>
<script src="https://kit.fontawesome.com/b328dc7d12.js"
	crossorigin="anonymous"></script>
<meta name="generator" content="Nicepage 6.0.3, nicepage.com">

<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">




<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "리뷰 랭킹 기타 등등 제외 최종"
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="ErrandInfo">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="./" data-include-products="false"
	class="u-body u-xl-mode" data-lang="en" style="backgrond-color:"#ff9962">
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
				href="Ranking.jsp"
				class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-3"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">&nbsp;랭킹&nbsp;</a>
			<a href="ChatListService"
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
</head>
<body>
	<section class="u-section-2">
	</section>
	<section class="u-align-center u-clearfix u-section-1" id="sec-d22e">
		<div id="main">
			<br>
			<table>
				<tr class="first-tr" style="font-weight:bold; font-size:18px; color: #175B74E0;">
					<td class="nth1-td"><span><i
							class="fa-regular fa-circle-user"
							style="font-size: 48px; text-align: center;"></i></span></td>
					<td class="nth2-td" colspan="2"><span class="title_h1">
							${ErrandInfo.title}</span></td>
					<td class="nth4-td"><span class="span-3">${ErrandInfo.errand_ctgr}</span>
					</td>
					<td class="nth5-td"><span class="span-3">${ErrandInfo.price}원</span>
					</td>
				</tr>
				<tr style="font-weight:bold; font-size:18px; color: #175B74E0;">
					<td class="nth6-td"><span class="span-3">${nickname}</span></td>
					<td class="nth7-td"><span class="span-3">${ErrandInfo.location_ctgr}</span></td>
					<td class="nth8-td"><span>${ErrandInfo.req_location}</span></td>
					<td class="nth9-td"><span>${ErrandInfo.req_date}</span></td>
					<td class="nth10-td"><span>${ErrandInfo.want_date}</span></td>
				</tr>
				<tr style="font-weight:bold; font-size:18px; color: #175B74E0;">
					<td class=nth11-td>
						<c:choose>
							<c:when test='${fn:contains(ErrandInfo.status, "0")}'>
								<span class="status">매칭 대기중</span>
							</c:when>
							<c:when test='${fn:contains(ErrandInfo.status, "1")}'>
								<span class="status">매칭 완료</span>
							</c:when>
							<c:when test='${fn:contains(ErrandInfo.status, "2")}'>
								<span class="status">매칭 종료</span>
							</c:when>
							<c:when test='${fn:contains(ErrandInfo.status, "3")}'>
								<span class="status">종료</span>
							</c:when>
						</c:choose>
					</td>
					<td class=nth12-td colspan="2"><span>${ErrandInfo.content}</span></td>
					<td class=nth13-td colspan="2">
					<c:choose>
						<c:when	test="${fn:contains(clientInfo.member_id, ErrandInfo.member_id)}">
						본인이 요청한 심부름입니다.
						</c:when>
						<c:when test="${not empty applyCheck}">
						이미 지원한 심부름입니다.
						</c:when>
							<c:otherwise>
								<form action="ApplyErrandService">
									<input type="hidden" name="message" id="message">
									<!-- 스크립트 연결 -->
								<input type="hidden" name="errand_id" value="${ErrandInfo.errand_id}"> 
								<input type="submit" value="지원하기" id="applyButton">
								</form>
							</c:otherwise>
					</c:choose>
					</td>

				</tr>
			</table>





			
			
		</div>
		</section>
	

	<script src="assets/js/ApplyErrand.js"></script>
</body>


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
				공고문</a> <br>&nbsp;<a href="PoliceInquiryService"
				class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-6"
				style="font-size: 30px">경찰서 조회</a> <br> <br>(주)ICㅣ대표
			윤수민ㅣ대표 번호: 010-9918-0000<br>대표 메일: vroong@naver.com<br>사업자등록번호:123-456-789<br>통신판매번호:
			2023-4777<br>서울특별시 강남구 강남대로 364<br>Copyright ⓒ 2023 부릉부름.
			All rights reserved.
		</p>
	</div>
</footer>

</body>
</html>