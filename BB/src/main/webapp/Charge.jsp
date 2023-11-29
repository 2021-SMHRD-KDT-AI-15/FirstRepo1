<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Charge</title>
<style>
#logo {
	width: 200px;
	height: 200px;
}
</style>
</head>

<body>
	<fieldset>
		<div>
			<img id="logo" src="./부릉부름_logo.png" alt="요청한 이미지를 찾을 수 없습니다.">
			<nav id="gnb">
				<ul>
					<li><a href="" target="_blank" id="gnb_li"
						style="display: block;">심부름 요청</a></li>
					<li><a href="" target="_blank" id="gnb_li"
						style="display: block;">심부름 목록</a></li>
					<li><a href="Rangking.jsp" target="_blank" id="gnb _li"
						style="display: block;">랭킹</a></li>
					<li><a href="Charge.jsp" target="_blank" id="gnb_li"
						style="display: block;">충전</a></li>
					<li><a href="" target="_blank" id="gnb_li"
						style="display: block;">채팅</a></li>
					<li><a href="" target="_blank" id="gnb_li"
						style="display: block;">마이페이지</a></li>
				</ul>
			</nav>

		</div>

		<form action="ChargeService" method="post">
			충전금액 <input type="text" placeholder="충전금액을 입력해주세요" name="charge_money"><br>
			<button>+1,000원</button>
			<button>+5,000원</button>
			<button>+10,000원</button>
			<button>+50,000원</button>
			<br> <input type="submit" value="충전하기">
		</form>
	</fieldset>


</body>

</html>