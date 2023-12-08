<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>MyInfo</title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/MyInfo.css" media="screen">
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
    <meta property="og:title" content="MyInfo">
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
    <section class="u-clearfix u-section-1" id="sec-b026">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <a href="PaymentHistoryService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-1" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">결제내역</a>
        <a href="ChargeHistoryService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">충전내역</a>
        <a href="MyInfoService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-1 u-text-hover-custom-color-1 u-btn-3" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">내 정보</a>
        <a href="InfoChange1.jsp" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-4" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">회원정보 변경</a>
        <a href="RequiredErrandService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-5" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">요청한 심부름</a>
        <a href="ShowApplyErrandService" class="u-btn u-button-style u-custom-font u-none u-text-active-custom-color-1 u-text-custom-color-3 u-text-hover-custom-color-1 u-btn-6" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">지원한 심부름</a>
        <div class="u-border-1 u-border-custom-color-1 u-container-style u-group u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <p class="u-custom-font u-text u-text-custom-color-3 u-text-1">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  ${MyInfo.nickname}(${MyInfo.id}) &nbsp; &nbsp; 님 환영합니다!<br>
              <br>
              <br>
              <br>&nbsp; 보유 금액 :&nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 3rem;">${MyInfo.money}</span>&nbsp; &nbsp; &nbsp;원
            </p>
          </div>
        </div>
        <div class="u-border-1 u-border-custom-color-1 u-container-style u-group u-group-2">
          <div class="u-container-layout u-container-layout-2">
            <p class="u-custom-font u-text u-text-custom-color-3 u-text-2">&nbsp; &nbsp; &nbsp;내가 받은 좋아요😍<br>
              <br>
              <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 3rem;">${getlike}</span>&nbsp; &nbsp;개
            </p>
          </div>
        </div>
        <div class="u-border-1 u-border-custom-color-1 u-container-style u-group u-group-3">
          <div class="u-container-layout u-container-layout-3">
            <p class="u-custom-font u-text u-text-custom-color-3 u-text-3">&nbsp; &nbsp; &nbsp;내가 받은 싫어요😢<br>
              <br>
              <br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-size: 3rem;"> ${getdislike}</span>&nbsp; &nbsp;개
            </p>
          </div>
        </div>
      </div>
    </section>
    <section class="skrollable u-align-center u-clearfix u-custom-color-2 u-lightbox u-parallax u-shading u-section-2" id="sec-78e0">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-center u-custom-font u-text u-text-1">나에 대한 후기</p>
      <table border="1">
							<tr bgcolor="white">
								<th width="50px"><b>NO</b></th>
								<th width="100"><b>후기내용</b></th>
								<th width="100"><b>from 닉네임</b></th>
							</tr>
							<tr>
								<c:forEach var="review1" items="${getreview1}" begin="0"
									end="9999" step="1" varStatus="status">
									<td align="center" width="600" height="50">${status.index}</td>
									<td align="center" width="600" height="50">${review1.review_ctnt}</td>
									<td align="center" width="200" height="50">${review1.nickname}</td>
							</tr>
							</c:forEach>

						</table>
      </div>
    </section>
    
    
    <section class="skrollable u-align-center u-clearfix u-custom-color-2 u-lightbox u-parallax u-shading u-section-3" id="sec-d201">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-align-center u-custom-font u-text u-text-1">내가 작성한 후기</p>
      <table border="1">
							<tr bgcolor="white">
								<th width="50px"><b>NO</b></th>
								<th width="100"><b>후기내용</b></th>
								<th width="100"><b>to 닉네임</b></th>
							</tr>
							<tr>
								<c:forEach var="review0" items="${getreview0}" begin="0"
									end="9999" step="1" varStatus="status">
									<td align="center" width="600" height="50">${status.index}</td>
									<td align="center" width="600" height="50">${review0.review_ctnt}</td>
									<td align="center" width="200" height="50">${review0.nickname}</td>
							</tr>
							</c:forEach>

						</table>
      </div>
    </section>
    
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-755f"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1"> &nbsp;<a href="https://pleasehelp.co.kr/O010101.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-1">개인정보처리방침</a>
          <br>&nbsp;<a href="https://pleasehelp.co.kr/O010102.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-2">서비스 이용약관</a>
          <br>&nbsp;<a href="https://pleasehelp.co.kr/O010103.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-3">위치기반서비스 이용약관</a>
          <br>&nbsp;<a href="https://pleasehelp.co.kr/O010104.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4">업무위수탁약관</a>
          <br>&nbsp;<a href="https://pleasehelp.co.kr/O010105.html" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-5">주식분할 공고문</a>
          <br>&nbsp;<a href="PoliceInquiryService" class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-6" style="font-size:30px">경찰서 조회</a>
          <br>
          <br>(주)ICㅣ대표 윤수민ㅣ대표 번호: 010-9918-0000<br>대표 메일: vroong@naver.com<br>사업자등록번호:123-456-789<br>통신판매번호: 2023-4777<br>서울특별시 강남구 강남대로 364<br>Copyright ⓒ 2023 부릉부름. All rights reserved.
        </p>
      </div></footer>
</body></html>