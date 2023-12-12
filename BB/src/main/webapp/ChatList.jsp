<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/extras/spring-security">
<head>
<title>ChatList</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="keywords" content="채팅 ChatList 페이지">
<meta name="description" content="">
<meta name="generator" content="Nicepage 6.0.3, nicepage.com">

<link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/ChatList.css" media="screen">
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
<!-- 외부 폰트 연결 -->
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">

<script	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script type="application/ld+json">{"@type": "Organization", "name": "리뷰 랭킹 기타 등등 제외 최종"}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="ChatList">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">

</head>
<!-- 헤더 태그 끝 -->
<!-- 바디 태그 시작 -->



<body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="en" >
	<header class="u-clearfix u-header" id="sec-9269" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
		<div class="u-clearfix u-sheet u-sheet-1">
			<a href="RequireErrand.jsp"
				class="u-border-none u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-1"
				data-animation-name="" data-animation-duration="0"
				data-animation-delay="0" data-animation-direction="">심부름 요청</a> 
				<img class="u-image u-image-contain u-image-default u-image-1" src="images/222.png" alt="" data-image-width="464" data-image-height="390" data-href="Main.jsp"> 
				<a href="ErrandListService"	class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">심부름 목록</a> 
				<a href="Ranking.jsp" class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">&nbsp;랭킹&nbsp;</a>
				<a href="ChatListService" class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-4" data-animation-name="" data-animation-duration="0"	data-animation-delay="0" data-animation-direction="">채팅</a> 
				<a href="Charge.jsp" class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-5"	data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">충전</a> 
				<a href="MyInfoService"	class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-6" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">마이 페이지</a>
		</div>
	</header>
	<div class="container">
      <div class="card-body" id="chatBody">
		<table>
		<tr>
		<td>
		</td>
		</tr>
		</table>
         	<c:choose>
         		<c:when test="${not empty param.emptyCheck}">
         		<img class="imges" src="assets/img/question-2-removebg-preview.png" >
         		<p class="name" align="center" style="font-size:50px">채팅 가능한 상대가 없어요...<p>
         		</c:when>
         		<c:otherwise>
         			<c:forEach var="c" items="${chatList}" varStatus="status">
         				<div id="chatBox" class="card bg-success text-white" onclick="window.location.href='ChatProgress.jsp?room=${c.errand_id}&client_no=${clientInfo.member_id}&subject_no=${nicknameList[status.index].member_id}'">
               				<div class="card-body"><p class="nickname" style="font-size: 25px">${nicknameList[status.index].nickname} 님과의 대화<p></div>
            			</div>
            			<br>
         			</c:forEach>
         		</c:otherwise>
        	</c:choose>

      </div>
   </div>
	<!-- 바디 태그 끝 -->
	<!-- 푸터 태그 시작 -->
	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer"
		id="sec-755f" style="magin-top: 200px">
		<div class="u-clearfix u-sheet u-sheet-1">
			<p class="u-small-text u-text u-text-variant u-text-1">
				&nbsp;
				<a href="https://pleasehelp.co.kr/O010101.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1">개인정보처리방침</a><br>
				&nbsp;<a href="https://pleasehelp.co.kr/O010102.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2">서비스 이용약관</a> <br>
				&nbsp;<a href="https://pleasehelp.co.kr/O010103.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3">위치기반서비스이용약관</a> <br>
				&nbsp;<a href="https://pleasehelp.co.kr/O010104.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4">업무위수탁약관</a><br>
				&nbsp;<a href="https://pleasehelp.co.kr/O010105.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-5">주식분할공고문</a> <br> <br>
				(주)ICㅣ대표 윤수민ㅣ대표 번호: 010-9918-0000<br>
				대표	메일: vroong@naver.com<br>사업자등록번호:123-456-789<br>
				통신판매번호:2023-4777<br>
				서울특별시 강남구 강남대로 364<br>
				Copyright ⓒ 2023 부릉부름.All rights reserved.
			</p>
		</div>
	</footer>
</body>
</html>