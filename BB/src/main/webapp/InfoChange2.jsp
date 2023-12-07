<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="InfoChangeService2" method="post">

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
		
		<p>변경할닉네임</p>
		<input type="text" placeholder="변경할 닉네임을 입력해주세요." name="nickname">
		<p>연락처</p>
		<input type="text" placeholder="변경할 전화번호를 입력해주세요." name="phone">
		<p>변경할비밀번호</p>
		<input type="text" placeholder="변경할 비밀번호를 입력해주세요." name="pw">
		<p>변경할주소검색</p>
		<input type="text" placeholder="주소를 입력해주세요." name="address1">
		<br><br>
		<input type="submit" value="변경">
	</form>
</body>
</html>