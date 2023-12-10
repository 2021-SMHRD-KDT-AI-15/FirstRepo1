<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords" content="회원가입">
<meta name="description" content="">
<title>Join</title>
<style type="text/css">
.hide {
   display: none;
}
</style>
<link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
<link rel="stylesheet" href="assets/css/Join.css" media="screen">
<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="nicepage.js"
   defer=""></script>

<meta name="generator" content="Nicepage 6.0.3, nicepage.com">

<link id="u-theme-google-font" rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">

<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="assets/js/address.js"></script>

<script type="application/ld+json">{
      "@context": "http://schema.org",
      "@type": "Organization",
      "name": "리뷰 랭킹 기타 등등 제외 최종"
}</script>
<meta name="theme-color" content="#478ac9">
<meta property="og:title" content="Join">
<meta property="og:description" content="">
<meta property="og:type" content="website">
<meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="./" data-include-products="false"
   class="u-body u-overlap u-overlap-transparent u-xl-mode" data-lang="en">
   <section class="u-align-center u-clearfix u-gradient u-section-1"
      id="carousel_49c8" data-animation-name="" data-animation-duration="0"
      data-animation-delay="0" data-animation-direction="">
      <div class="u-clearfix u-sheet u-sheet-1">
         <h2
            class="u-align-center u-custom-font u-text u-text-body-alt-color u-text-1">회원가입</h2>
         <div
            class="custom-expanded u-align-center u-border-11 u-border-no-left u-border-no-right u-border-no-top u-border-white u-container-style u-custom-border u-group u-radius u-shape-round u-white u-group-1">
            <div class="u-container-layout u-container-layout-1">
               <div class="u-form u-login-control u-form-1">
                  <form action="JoinService"
                     class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form"
                     source="custom" name="form" style="padding: 0px;" method="post">
                     <div class="u-form-group u-form-name u-label-top">
                        <label for="username-a30d"
                           class="u-custom-font u-label u-text-custom-color-1 u-label-1">ID</label>
                        <input type="text" placeholder="아이디는 중복불가입니다."
                           id="username-a30d" name="id"
                           class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-1"
                           required="">
                        <div class="success-message hide">사용할 수 있는 아이디입니다</div>
                        <div class="failure-message hide">아이디는 4~12글자이어야 합니다</div>
                        <div class="failure-message2 hide">영어 또는 숫자만 가능합니다</div>
                     </div>
                     <div class="u-form-group u-label-top">
                        <label for="password-a30d"
                           class="u-custom-font u-label u-text-custom-color-1 u-label-2">PW</label>
                        <input type="password" placeholder="비밀번호를 입력해주세요."
                           id="password-a30d" name="pw"
                           class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-2"
                           required="">
                        <div class="strongPassword-message hide">8글자 이상, 영문, 숫자,
                           특수문자(@$!%*#?&)를 사용하세요</div>
                     </div>
                     <script type="text/javascript">
                        // 1. 아이디 입력창 정보 가져오기
                        let elInputUsername = document
                              .querySelector('#username-a30d'); // input#username-a30d
                        // 2. 성공 메시지 정보 가져오기
                        let elSuccessMessage = document
                              .querySelector('.success-message'); // div.success-message.hide
                        // 3. 실패 메시지 정보 가져오기 (글자수 제한 4~12글자)
                        let elFailureMessage = document
                              .querySelector('.failure-message'); // div.failure-message.hide
                        // 4. 실패 메시지2 정보 가져오기 (영어 또는 숫자)
                        let elFailureMessageTwo = document
                              .querySelector('.failure-message2'); // div.failure-message2.hide
                        // 1. 비밀번호 입력창 정보 가져오기
                        let elInputPassword = document
                              .querySelector('#password-a30d'); // input#password-a30d
                        // 2. 실패 메시지 정보 가져오기 (8글자 이상, 영문, 숫자, 특수문자 미사용)
                        let elStrongPasswordMessage = document
                              .querySelector('.strongPassword-message'); // div.strongPassword-message.
                        function idLength(value) {
                           return value.length >= 4
                                 && value.length <= 12
                        }
                        function onlyNumberAndEnglish(str) {
                           return /^[A-Za-z0-9][A-Za-z0-9]*$/
                                 .test(str);
                        }
                        function strongPassword(str) {
                           return /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/
                                 .test(str);
                        }
                        elInputUsername.onkeyup = function() {
                           // 값을 입력한 경우
                           if (elInputUsername.value.length !== 0) {
                              // 영어 또는 숫자 외의 값을 입력했을 경우
                              if (onlyNumberAndEnglish(elInputUsername.value) === false) {
                                 elSuccessMessage.classList
                                       .add('hide');
                                 elFailureMessage.classList
                                       .add('hide');
                                 elFailureMessageTwo.classList
                                       .remove('hide'); // 영어 또는 숫자만 가능합니다
                              }
                              // 글자 수가 4~12글자가 아닐 경우
                              else if (idLength(elInputUsername.value) === false) {
                                 elSuccessMessage.classList
                                       .add('hide'); // 성공 메시지가 가려져야 함
                                 elFailureMessage.classList
                                       .remove('hide'); // 아이디는 4~12글자이어야 합니다
                                 elFailureMessageTwo.classList
                                       .add('hide'); // 실패 메시지2가 가려져야 함
                              }
                              // 조건을 모두 만족할 경우
                              else if (idLength(elInputUsername.value)
                                    || onlyNumberAndEnglish(elInputUsername.value)) {
                                 elSuccessMessage.classList
                                       .remove('hide'); // 사용할 수 있는 아이디입니다
                                 elFailureMessage.classList
                                       .add('hide'); // 실패 메시지가 가려져야 함
                                 elFailureMessageTwo.classList
                                       .add('hide'); // 실패 메시지2가 가려져야 함
                              }
                           }
                           // 값을 입력하지 않은 경우 (지웠을 때)
                           // 모든 메시지를 가린다.
                           else {
                              elSuccessMessage.classList.add('hide');
                              elFailureMessage.classList.add('hide');
                              elFailureMessageTwo.classList
                                    .add('hide');
                           }
                        }
                        elInputPassword.onkeyup = function() {
                           // console.log(elInputPassword.value);
                           // 값을 입력한 경우
                           if (elInputPassword.value.length !== 0) {
                              if (strongPassword(elInputPassword.value)) {
                                 elStrongPasswordMessage.classList
                                       .add('hide'); // 실패 메시지가 가려져야 함
                              } else {
                                 elStrongPasswordMessage.classList
                                       .remove('hide'); // 실패 메시지가 보여야 함
                              }
                           }
                           // 값을 입력하지 않은 경우 (지웠을 때)
                           // 모든 메시지를 가린다.
                           else {
                              elStrongPasswordMessage.classList
                                    .add('hide');
                           }
                        };
                     </script>
                     <div class="u-form-group u-label-top u-form-group-3">
                        <label for="text-1ce3"
                           class="u-custom-font u-label u-text-custom-color-1 u-label-3">닉네임</label>
                        <input type="text" id="text-1ce3" name="nickname"
                           class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-3"
                           placeholder="닉네임은 중복불가입니다.">
                     </div>
                     <div
                        class="u-form-group u-form-partition-factor-2 u-label-top u-form-group-4">
                        <label for="text-76e2"
                           class="u-custom-font u-label u-text-custom-color-1 u-label-4">이메일</label>
                        <input type="email" placeholder="이메일은 중복불가입니다." id="text-76e2"
                           name="email"
                           class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-4">
                     </div>
                     <div
                        class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-5">
                        <label for="select-810a"
                           class="u-custom-font u-form-control-hidden u-label u-text-custom-color-1 u-label-5"></label>
                        <div class="u-form-select-wrapper">
                           <select id="select-810a" name="select"
                              class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-5">
                              <option value="naver.com" data-calc="">naver.com</option>
                              <option value="daum.net" data-calc="">daum.net</option>
                              <option value="google.com" data-calc="">google.com</option>
                           </select>
                           <svg class="u-caret u-caret-svg u-text-palette-5-dark-2"
                              version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                              xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                              width="16px" height="16px" viewBox="0 0 16 16"
                              style="fill: currentColor;" xml:space="preserve">
                              <polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                        </div>
                     </div>
                     <div class="u-form-group u-label-top u-form-group-6">
                        <label for="text-2d79"
                           class="u-custom-font u-label u-text-custom-color-1 u-label-6">연락처</label>
                        <input type="tel" placeholder="010-0000-0000" id="text-2d79" name="phone"
                           class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-6">
                     </div>
                     <div class="u-form-group u-label-top u-form-group-7">
                        <label for="text-413d"
                           class="u-custom-font u-label u-text-custom-color-1 u-label-7">주소</label><br>
                        <input type="text" id="postcode" name="postcode"
                           placeholder="우편번호"> <input type="button"
                           onclick="execDaumPostcode()" value="우편번호 찾기"><br>
                        <input type="text" name="address" id="address" placeholder="주소"><br>
                        <input type="text" name="detailAddress" id="detailAddress"
                           placeholder="상세주소"> <input type="text"
                           name="extraAddress" id="extraAddress" placeholder="참고항목">
                     </div>
                     <div
                        class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-8">
                        <label for="select-e794"
                           class="u-custom-font u-label u-text-custom-color-1 u-label-8">성별</label>
                        <div class="u-form-select-wrapper">
                           <select id="select-e794" name="gender"
                              class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-8">
                              <option value="0" data-calc="0">남</option>
                              <option value="1" data-calc="1">여</option>
                           </select>
                           <svg class="u-caret u-caret-svg u-text-palette-5-dark-2"
                              version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                              xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                              width="16px" height="16px" viewBox="0 0 16 16"
                              style="fill: currentColor;" xml:space="preserve">
                              <polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                        </div>
                     </div>
                     <div
                        class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-9">
                        <label for="select-f578"
                           class="u-custom-font u-label u-text-custom-color-1 u-label-9">연령대</label>
                        <div class="u-form-select-wrapper">
                           <select id="select-f578" name="age"
                              class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-custom-font u-input u-input-rectangle u-text-palette-5-dark-2 u-input-9">
                              <option value="10" data-calc="10">10대</option>
                              <option value="20" data-calc="20">20대</option>
                              <option value="30" data-calc="30">30대</option>
                              <option data-calc="40" value="40">40대</option>
                              <option data-calc="50" value="50">50대이상</option>
                           </select>
                           <svg class="u-caret u-caret-svg u-text-palette-5-dark-2"
                              version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
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
                           class="u-form-control-hidden"> <a href="#"
                           class="u-active-white u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-custom-font u-hover-white u-radius-50 u-text-active-custom-color-1 u-text-hover-custom-color-1 u-btn-1">회원가입</a>
                     </div>
                     <input type="hidden" value="" name="recaptchaResponse">
                  </form>
               </div>
               <div
                  class="u-container-style u-expanded-width u-group u-radius u-shape-round u-white u-group-2">
                  <div
                     class="u-container-layout u-valign-bottom u-container-layout-2">
                     <a href="SubMain.jsp"
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