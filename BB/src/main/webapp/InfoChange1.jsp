<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoChange1</title>
    <style>
        #logo {
            width: 200px;
            height: 200px;
        }
    </style>
</head>

<body>
    <div>
        <img id="logo" src="./부릉부름_logo.png" alt="요청한 이미지를 찾을 수 없습니다.">
    </div>
    <form action="InfoChange2" method="post">
		<input type="submit" value="심부름 요청">
		<input type="submit" value="심부름 목록">
		<input type="submit" value="랭킹">
		<input type="submit" value="충전">
		<input type="submit" value="채팅">
		<input type="submit" value="마이페이지">
		<br>

		<input type="submit" value="내정보">
		<input type="submit" value="회원정보변경">
		<input type="submit" value="요청한심부름">
		<input type="submit" value="지원한심부름">
		<input type="submit" value="충전내역">
		<input type="submit" value="결제내역">
		<br>

	    <section>
	        <input type="text" placeholder="비밀번호를 입력해주세요.">
	        <input type="submit" value="확인">
	    </section>
	</form>
	
</body>
</html>