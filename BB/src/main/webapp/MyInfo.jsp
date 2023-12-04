<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MyInfo</title>
<style>
#logo {
	width: 200px;
	height: 200px;
}

.dot.wrapper {
	width: 600px;
	margin: 0 auto;
}

.dot {
	display: flex;
	float: left;
	list-style: none;
}

#gnb_li {
	width: 100px;
	height: 100px;
	line-height: 100px;
	text-align: center;
	color: grey;
	text-decoration: none;
	font-size: 18px;
	margin: 0 30px;
}

#ChatList_btn {
	width: 600px;
	height: 150px;
	font-size: 50px;
	border-radius: 30px;
	text-align: left;
}
</style>
</head>

<body>

	<fieldset>
		<div class="dot.wrapper">
			<div class="dot">
				<img class="dot" id="logo" src="./부릉부름_logo.png"
					alt="요청한 이미지를 찾을 수 없습니다.">
				<nav id="gnb">
					<ul class="dot">
						<li><a href="ErrandList.jsp" target="_blank" id="gnb_li"
							style="display: block;">심부름 요청</a></li>
						<li><a href="RequireErrand.jsp" target="_blank" id="gnb_li"
							style="display: block;">심부름 목록</a></li>
						<li><a href="Ranking.jsp" target="_blank" id="gnb_li"
							style="display: block;">랭킹</a></li>
						<li><a href="Charge.jsp" target="_blank" id="gnb_li"
							style="display: block;">충전</a></li>
						<li><a href="ChatList.jsp" target="_blank" id="gnb_li"
							style="display: block;">채팅</a></li>
						<li><a href="Myinfo.jsp" target="_blank" id="gnb_li"
							style="display: block;">마이페이지</a></li>
					</ul>
				</nav>
				<br>
				<div>
					<section>
						<a href="MyInfoService"><button>내 정보</button></a> <a
							href="InfoChangeService1"><button>회원정보 변경</button></a> <a
							href="RequiredErrandService"><button>요청한 심부름</button></a> <a
							href="ShowApplyErrandService"><button>지원한 심부름</button></a> <a
							href="ChargeHistoryService"><button>충전내역</button></a> <a
							href="PaymentHistory.jsp"><button>결제 내역</button></a>
					</section>
				</div>

    <fieldset>
        <div class="dot.wrapper">
            <div class="dot">
                <img class="dot" id="logo" src="./부릉부름_logo.png" alt="요청한 이미지를 찾을 수 없습니다.">
                <nav id="gnb">
                    <ul class="dot">
                        <li><a href="ErrandList.jsp" target="_blank" id="gnb_li" style="display: block;">심부름 요청</a></li>
                        <li><a href="RequireErrand.jsp" target="_blank" id="gnb_li" style="display: block;">심부름 목록</a>
                        </li>
                        <li><a href="Ranking.jsp" target="_blank" id="gnb_li" style="display: block;">랭킹</a></li>
                        <li><a href="Charge.jsp" target="_blank" id="gnb_li" style="display: block;">충전</a></li>
                        <li><a href="ChatList.jsp" target="_blank" id="gnb_li" style="display: block;">채팅</a></li>
                        <li><a href="Myinfo.jsp" target="_blank" id="gnb_li" style="display: block;">마이페이지</a></li>
                    </ul>
                </nav><br>
                <div>
                    <section>
                        <a href="MyInfoService"><button>내 정보</button></a>
                        <a href="InfoChangeService1"><button>회원정보 변경</button></a>
                        <a href="RequiredErrandService"><button>요청한 심부름</button></a>
                        <a href="ShowApplyErrandService"><button>지원한 심부름</button></a>
                        <a href="ChargeHistoryService"><button>충전내역</button></a>
                        <a href="PaymentHistory.jsp"><button>결제 내역</button></a>
                    </section>
                </div>


			</div>
			<fieldset>
				<legend>내가 받은 좋아요</legend>
				<p>${getreview.u_like}</p>
			</fieldset>
			<fieldset>
				<legend>내가 받은 싫어요</legend>
				<p>${getreview.u_dislike}</p>
			</fieldset>
			
			<p>${MyInfo.nickname}(${MyInfo.id})님 환영합니다!</p><br>
			<p>보유 금액 : ${MyInfo.money}원</p>
			
			
			
			
</body>

</html>