<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>SubMain.jsp</title>
<style>
#imgsection {
	width: 100px;
	height: 100px;
}

#logo {
	width: 100px;
	height: 100px;
}
</style>

</head>

<body>
	<header>
		<div id="logo">
			<img id="logo" src="asset/img/부릉부름_logo.png" alt="">
		</div>

		<div>
			<nav class="button">
				<a href="Login.jsp"><button id="login">로그인</button></a> <a
					href="Join.jsp"><button id="join">회원가입</button></a>
			</nav>
		</div>
		<hr>
		<main>
			<section>배너페이지</section>
			<section id="imgsection">
				<img src="./스크린샷 2023-11-27 123226.png"
					style="width: 100px; height: 100px;">

			</section>
			웹사이트 내용 설명
		</main>
	</header>


</body>

</html>