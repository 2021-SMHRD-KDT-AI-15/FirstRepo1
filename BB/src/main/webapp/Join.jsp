<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="회원가입">
    <meta name="description" content="">
    <title>Join</title>
    <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/Join.css" media="screen">
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
    <meta property="og:title" content="Join">
    <meta property="og:description" content="">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body data-path-to-root="./" data-include-products="false" class="u-body u-overlap u-overlap-transparent u-xl-mode" data-lang="en">
    <section class="u-align-center u-clearfix u-gradient u-section-1" id="carousel_49c8" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-custom-font u-text u-text-body-alt-color u-text-1">회원가입</h2>
        <div class="custom-expanded u-align-center u-border-11 u-border-no-left u-border-no-right u-border-no-top u-border-white u-container-style u-custom-border u-group u-radius u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-form u-login-control u-form-1">
              <form action="JoinService" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 0px;" method="post">
                <div class="u-form-group u-form-name u-label-top">
                  <label for="username-a30d" class="u-custom-font u-label u-text-custom-color-1 u-label-1">ID</label>
                  <input type="text" placeholder="아이디는 중복불가입니다." id="username-a30d" name="id" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-1" required="">
                </div>
                <div class="u-form-group u-label-top">
                  <label for="password-a30d" class="u-custom-font u-label u-text-custom-color-1 u-label-2">PW</label>
                  <input type="text" placeholder="비밀번호를 입력해주세요." id="password-a30d" name="pw" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-2" required="">
                </div>
                <div class="u-form-group u-label-top u-form-group-3">
                  <label for="text-1ce3" class="u-custom-font u-label u-text-custom-color-1 u-label-3">닉네임</label>
                  <input type="text" id="text-1ce3" name="nickname" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-3" placeholder="닉네임은 중복불가입니다.">
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-label-top u-form-group-4">
                  <label for="text-76e2" class="u-custom-font u-label u-text-custom-color-1 u-label-4">이메일</label>
                  <input type="text" placeholder="이메일은 중복불가입니다." id="text-76e2" name="email" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-4">
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-5">
                  <label for="select-810a" class="u-custom-font u-form-control-hidden u-label u-text-custom-color-1 u-label-5"></label>
                  <div class="u-form-select-wrapper">
                    <select id="select-810a" name="select" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-5">
                      <option value="naver.com" data-calc="">naver.com</option>
                      <option value="daum.net" data-calc="">daum.net</option>
                      <option value="google.com" data-calc="">google.com</option>
                    </select>
                    <svg class="u-caret u-caret-svg u-text-palette-5-dark-2" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                  </div>
                </div>
                <div class="u-form-group u-label-top u-form-group-6">
                  <label for="text-2d79" class="u-custom-font u-label u-text-custom-color-1 u-label-6">연락처</label>
                  <input type="text" placeholder="" id="text-2d79" name="phone" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-6">
                </div>
                <div class="u-form-group u-label-top u-form-group-7">
                  <label for="text-413d" class="u-custom-font u-label u-text-custom-color-1 u-label-7">주소</label>
                  <input type="text" placeholder="" id="text-413d" name="address" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-7">
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-8">
                  <label for="select-e794" class="u-custom-font u-label u-text-custom-color-1 u-label-8">성별</label>
                  <div class="u-form-select-wrapper">
                    <select id="select-e794" name="gender" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-8">
                      <option value="0" data-calc="0">남</option>
                      <option value="1" data-calc="1">여</option>
                    </select>
                    <svg class="u-caret u-caret-svg u-text-palette-5-dark-2" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                  </div>
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-9">
                  <label for="select-f578" class="u-custom-font u-label u-text-custom-color-1 u-label-9">연령대</label>
                  <div class="u-form-select-wrapper">
                    <select id="select-f578" name="age" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-9">
                      <option value="10" data-calc="10">10대</option>
                      <option value="20" data-calc="20">20대</option>
                      <option value="30" data-calc="30">30대</option>
                      <option data-calc="40" value="40">40대</option>
                      <option data-calc="50" value="50">50대이상</option>
                    </select>
                    <svg class="u-caret u-caret-svg u-text-palette-5-dark-2" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                  </div>
                </div>
                <div class="u-form-checkbox u-form-group u-label-top">
                  <input type="checkbox" id="checkbox-a30d" name="remember" class="u-active-palette-1-base u-field-input">
                  <label for="checkbox-a30d" class="u-field-label u-form-control-hidden" style="font-size: 1rem; letter-spacing: 0px; text-transform: none"></label>
                </div>
                <div class="u-form-group u-form-submit u-label-top">
                  <input type="submit" value="submit" class="u-form-control-hidden">
                  <a href="#" class="u-active-white u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-custom-font u-hover-white u-radius-50 u-text-active-custom-color-1 u-text-hover-custom-color-1 u-btn-1">회원가입</a>
                </div>
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
            </div>
            <div class="u-container-style u-expanded-width u-group u-radius u-shape-round u-white u-group-2">
              <div class="u-container-layout u-valign-bottom u-container-layout-2">
                <a href="SubMain.jsp" class="u-active-white u-btn u-button-style u-custom-color-1 u-custom-font u-hover-white u-text-active-custom-color-1 u-text-hover-custom-color-1 u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">돌아가기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    
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
      <a class="u-link" href="https://nicepage.com/templates" target="_blank">
        <span>Free Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/html-website-builder" target="_blank">
        <span>HTML Website Builder</span>
      </a>. 
    </section>
  
</body></html>