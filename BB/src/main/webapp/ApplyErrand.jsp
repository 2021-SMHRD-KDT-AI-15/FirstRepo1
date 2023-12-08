<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>ApplyErrand</title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/ApplyErrand.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 6.0.3, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "리뷰 랭킹 기타 등등 제외 최종"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="ApplyErrand">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body data-path-to-root="./" data-include-products="false" class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header" id="sec-9269" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction=""><div class="u-clearfix u-sheet u-sheet-1">
        <a href="RequireErrand.jsp" class="u-border-none u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">심부름 요청</a>
        <img class="u-image u-image-contain u-image-default u-image-1" src="images/222.png" alt="" data-image-width="464" data-image-height="390" data-href="Main.jsp">
        <a href="ErrandListService" class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">심부름 목록</a>
        <a href="RankingService" class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">&nbsp;랭킹&nbsp;</a>
        <a href="ChatService" class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">채팅</a>
        <a href="Charge.jsp" class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-5" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">충전</a>
        <a href="MyInfoService" class="u-btn u-button-style u-custom-color-1 u-custom-font u-hover-custom-color-2 u-btn-6" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">마이 페이지</a>
      </div></header>
    <section class="u-clearfix u-gradient u-section-1" id="sec-9c78">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
         <a href="PaymentHistoryService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">결제내역</a>
        <a href="ChargeHistoryService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">충전내역</a>
        <a href="MyInfoService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">내 정보</a>
        <a href="InfoChange1.jsp" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">회원정보 변경</a>
        <a href="RequiredErrandService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-5" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">요청한 심부름</a>
        <a href="ShowApplyErrandService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-1 u-text-hover-custom-color-1 u-btn-6" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">지원한 심부름</a>
      </div>
    </section>
    
    <body>

	<c:choose>
		<c:when test="${fn:contains(param.applyCheck, 0)}">
			<div>
				<table>
					<tr>
						<td>지원한 심부름이 없습니다.</td>
					</tr>
				</table>
			</div>
		</c:when>
		<c:otherwise>
			<c:forEach var="ErrandTitle" items="${ErrandTitleList}" varStatus="status">
				<div>
					<table>
						<tr>
							<td id="title">${ErrandTitle.title}</td>
							<c:choose>
								<c:when test="${fn:contains(ApplyErrandList[status.index].match_status, 0)}">
									<td id="status">수락대기</td>
									<td><a href="ApplyCancelService?errand_id=${ErrandTitle.errand_id}"><button>지원취소</button></a></td>
								</c:when>
								<c:when test="${fn:contains(ApplyErrandList[status.index].match_status, 1)}">
									<td id="status">매칭완료</td>
									<td><a href="ApplyCancelService?errand_id=${ErrandTitle.errand_id}"><button>지원취소</button></a></td>
									<td><a href="ChatListService"><button>채팅</button></a></td>
								</c:when>
								<c:when test="${fn:contains(ApplyErrandList[status.index].match_status, 2)}">
									<td id="status">선택받지 못함</td>
									<td><a href="ApplyCancelService?errand_id=${ErrandTitle.errand_id}"><button>확인</button></a></td>
									<td></td>
								</c:when>
								<c:when test="${fn:contains(ApplyErrandList[status.index].match_status, 4)}">
									<td id="status">심부름 종료</td>
									<td><a href="GetNickname_WriteReviewService?subject_id=${ErrandTitle.member_id}&title=${ErrandTitle.title}&errand_ctgr=${ErrandTitle.errand_ctgr}&errand_id=${ErrandTitle.errand_id}"><button>후기작성</button></a></td>
								</c:when>
							</c:choose>
						</tr>
					</table>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>

</body>
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-755f"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1"> &nbsp;<a href="https://pleasehelp.co.kr/O010101.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1">개인정보처리방침</a>
          <br>&nbsp;<a href="https://pleasehelp.co.kr/O010102.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2">서비스 이용약관</a>
          <br>&nbsp;<a href="https://pleasehelp.co.kr/O010103.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3">위치기반서비스 이용약관</a>
          <br>&nbsp;<a href="https://pleasehelp.co.kr/O010104.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4">업무위수탁약관</a>
          <br>&nbsp;<a href="https://pleasehelp.co.kr/O010105.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-5">주식분할 공고문</a>
          <br>
          <br>(주)ICㅣ대표 윤수민ㅣ대표 번호: 010-9918-0000<br>대표 메일: vroong@naver.com<br>사업자등록번호:123-456-789<br>통신판매번호: 2023-4777<br>서울특별시 강남구 강남대로 364<br>Copyright ⓒ 2023 부릉부름. All rights reserved.
        </p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/website-builder" target="_blank">
        <span>Website Builder</span>
      </a>. 
    </section>
  
</body></html>