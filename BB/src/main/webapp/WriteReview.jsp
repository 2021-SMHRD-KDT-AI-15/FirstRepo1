<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>WriteReview.html</title>
<link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/WriteReviewFromReqErr.css">

<script class="u-script" type="text/javascript" src="jquery.js"></script>
<script class="u-script" type="text/javascript" src="nicepage.js"></script>

<meta name="generator" content="Nicepage 6.0.3, nicepage.com">

<meta name="theme-color" content="#478ac9">
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


	<fieldset>
		<legend>　후기 작성　</legend>

		<div id="f1">
			회원님이 지원하신 심부름 <b>'${title}'</b> 을(를) 요청한 <b>'${nickname}'</b> 님에 대한 평가
		</div>
		<hr>
		<form action="WriteReviewService_reqLast" method="post">
			<input type="hidden" name="applyMemberNickname" value="${nickname}">
			<!-- 지우면 안됨 -->
			<input type="hidden" name="applyMemberId" value="${subject_id}">
			<!-- 지우면 안됨 -->
			<input type="hidden" name="errand_ctgr" value="${errand_ctgr}">
			<!-- 지우면 안됨 -->
			<input type="hidden" name="errand_id" value="${errand_id}">
			<!-- 지우면 안됨 -->

			<div id="f2">
				<textarea name="content" id="WriteReview" cols="30" rows="10"></textarea>
            </div>
	        <div id="f5">
				<div id="f3">
					<label>
						<img src="assets/img/ThumbsUp.png" width="91px"><br>
						만족해요 <input type="radio" id="li" name="like" value="0">
					</label>
				</div>
				<div id="f4">
					<label>
						<img src="assets/img/ThumbsDown.png" width="80px" style="margin-bottom: 5px;"><br>
						별로였어요 <input type="radio" id="disli" name="like" value="1">
					</label>
				</div>
			</div>
			<div id="f6">
				<input type="submit" value="후기 작성 완료" id="f7" class="button--moema">
			</div>
		</form>
	</fieldset>



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