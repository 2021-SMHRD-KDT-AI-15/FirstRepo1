<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body><form action="Myinfo" method="post">
		<input type="submit" value="내정보">
		<input type="submit" value="회원정보변경">
		<input type="submit" value="요청한심부름">
		<input type="submit" value="지원한심부름">
		<input type="submit" value="충전내역">
		<input type="submit" value="결제내역">
		<br>
		
		${nick}(${id})님 환영합니다!
		보유금액 : ${money} 원
		
		내가 받은 좋아요
		내가 받은 싫어요
		
		나에 대한 후기
		review_ctgr1
		내가 작성한 후기
		review_ctgr0
	</form>
</body>
</html>