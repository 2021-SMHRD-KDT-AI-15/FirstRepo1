<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="회원가입">
    <meta name="description" content="">
    <title>Join</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Join.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 6.0.3, nicepage.com">
    
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Join">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/"></head>
  <body data-path-to-root="./" data-include-products="false" class="u-body u-overlap u-overlap-transparent u-xl-mode" data-lang="en">
    <section class="u-align-center u-clearfix u-gradient u-section-1" id="carousel_49c8" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">
      <div class="u-clearfix u-sheet u-sheet-1">
        <h2 class="u-align-center u-custom-font u-text u-text-1">회원가입</h2>
        <div class="custom-expanded u-align-center u-border-11 u-border-no-left u-border-no-right u-border-no-top u-border-white u-container-style u-custom-border u-group u-radius u-shape-round u-white u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <div class="u-form u-login-control u-form-1">
              <form action="JoinService" class="u-clearfix u-form-custom-backend u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 0px;" method="post">
                <div class="u-form-group u-form-name u-label-top">
                  <label for="username-a30d" class="u-label u-label-1">ID</label>
                  <input type="text" placeholder="아이디는 중복불가입니다." id="username-a30d" name="id" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-1" required="">
                </div>
                <div class="u-form-group u-label-top">
                  <label for="password-a30d" class="u-label u-label-2">PW</label>
                  <input type="text" placeholder="비밀번호를 입력해주세요." id="password-a30d" name="pw" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-2" required="">
                </div>
                <div class="u-form-group u-label-top u-form-group-3">
                  <label for="text-1ce3" class="u-label u-label-3">닉네임</label>
                  <input type="text" id="text-1ce3" name="nickname" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-3" placeholder="닉네임은 중복불가입니다.">
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-label-top u-form-group-4">
                  <label for="text-76e2" class="u-label u-label-4">이메일</label>
                  <input type="text" placeholder="이메일은 중복불가입니다." id="text-76e2" name="email" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-4">
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-5">
                  <label for="select-810a" class="u-form-control-hidden u-label u-label-5"></label>
                  <div class="u-form-select-wrapper">
                    <select id="select-810a" name="select" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-5">
                      <option value="naver.com" data-calc="">naver.com</option>
                      <option value="daum.net" data-calc="">daum.net</option>
                      <option value="google.com" data-calc="">google.com</option>
                    </select>
                    <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                  </div>
                </div>
                <div class="u-form-group u-label-top u-form-group-6">
                  <label for="text-2d79" class="u-label u-label-6">연락처</label>
                  <input type="text" placeholder="" id="text-2d79" name="phone" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-6">
                </div>
                <div class="u-form-group u-label-top u-form-group-7">
                 	<label for="text-413d" class="u-label u-label-7">주소</label><br>
					<input type="text" id="postcode" placeholder="우편번호" name="postcode1">
					<input type="button" onclick="execDaumPostcode()" value="우편번호 찾기" ><br>
					<input type="text" id="address" placeholder="주소" name="address1"><br>
					<input type="text" id="detailAddress" placeholder="상세주소" name="address2">
					<input type="text" id="extraAddress" placeholder="참고항목" name="address3">
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-8">
                  <label for="select-e794" class="u-label u-label-8">성별</label>
                  <div class="u-form-select-wrapper">
                    <select id="select-e794" name="gender" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-8">
                      <option value="0" data-calc="0">남</option>
                      <option value="1" data-calc="1">여</option>
                    </select>
                    <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                  </div>
                </div>
                <div class="u-form-group u-form-partition-factor-2 u-form-select u-label-top u-form-group-9">
                  <label for="select-f578" class="u-label u-label-9">연령대</label>
                  <div class="u-form-select-wrapper">
                    <select id="select-f578" name="age" class="u-border-2 u-border-grey-50 u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-input-9">
                      <option value="10" data-calc="10">10대</option>
                      <option value="20" data-calc="20">20대</option>
                      <option value="30" data-calc="30">30대</option>
                      <option data-calc="40" value="40">40대</option>
                      <option data-calc="50" value="50">50대이상</option>
                    </select>
                    <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                  </div>
                </div>
                <div class="u-form-checkbox u-form-group u-label-top">
                  <input type="checkbox" id="checkbox-a30d" name="remember" class="u-active-palette-1-base u-field-input">
                  <label for="checkbox-a30d" class="u-field-label u-form-control-hidden" style="font-size: 1rem; letter-spacing: 0px; text-transform: none"></label>
                </div>
                <div class="u-form-group u-form-submit u-label-top">
                  <input type="submit" value="submit" class="u-form-control-hidden">
                  <a href="#" class="u-active-white u-border-none u-btn u-btn-round u-btn-submit u-button-style u-custom-color-1 u-hover-white u-radius-50 u-text-active-custom-color-1 u-text-hover-custom-color-1 u-btn-1">회원가입</a>
                </div>
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
            </div>
            <div class="u-container-style u-expanded-width u-group u-radius u-shape-round u-white u-group-2">
              <div class="u-container-layout u-valign-bottom u-container-layout-2">
                <a href="SubMain.jsp" class="u-active-white u-btn u-button-style u-custom-color-1 u-hover-white u-text-active-custom-color-1 u-text-hover-custom-color-1 u-btn-2" data-animation-name="" data-animation-duration="0" data-animation-delay="0" data-animation-direction="">돌아가기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('postcode').value = data.zonecode;
	                document.getElementById("address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("detailAddress").focus();
	            }
	        }).open();
	    }
	</script>
    
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