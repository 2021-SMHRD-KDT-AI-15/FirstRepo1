<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginService" method="post">
		<p>로그인</p>
		<input type="text" placeholder="아이디를 입력하세요." name="id">

		<p>비밀번호</p>
		<input type="password" placeholder="비밀번호를 입력하세요" name="pw"><br><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>