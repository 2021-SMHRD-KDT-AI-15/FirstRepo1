<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ranking</title>
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
	width: 200px;
	height: 500px;
	line-height: 100px;
	text-align: center;
	color: grey;
	text-decoration: none;
	font-size: 18px;
	margin: 0 30px;
}

#ChatList_btn {
	width: 600px;
	height: 250px;
	font-size: 50px;
	border-radius: 30px;
	text-align: left;
}

.table {
	text-align: center;
	display: flex;
	float: left;
	margin-right: 50px;
}
</style>
</head>

<body>
	<fieldset style="height: auto;">
		<header class="dot.wrapper">
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
			</div>
		</header>
		<!-- 테이블 가로로 배치 시켜야 함 -->
		<main>
			<div>
				<table class="table" border="1">
					<tr>
						<td><strong>순위</strong></td>
						<td><strong>이름</strong></td>
						<td><strong>좋아요 개수</strong></td>
					</tr>
					<tr>
						<td>순위 들어가는 부분</td>
						<td>윤수민</td>
						<td>좋아요 값이 들어가는 부분</td>
					</tr>
				</table>
				<table class="table" border="1">
					<tr>
						<td><strong>순위</strong></td>
						<td><strong>이름</strong></td>
						<td><strong>좋아요 개수</strong></td>
					</tr>
					<tr>
						<td>순위 들어가는 부분</td>
						<td>윤수민</td>
						<td>좋아요 값이 들어가는 부분</td>
					</tr>
				</table>
				<table class="table" border="1">
					<tr>
						<td><strong>순위</strong></td>
						<td><strong>이름</strong></td>
						<td><strong>좋아요 개수</strong></td>
					</tr>
					<tr>
						<td>순위 들어가는 부분</td>
						<td>윤수민</td>
						<td>좋아요 값이 들어가는 부분</td>
					</tr>
				</table>
			</div>

		</main>
	</fieldset>
</body>

</html>