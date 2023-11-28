<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="LoginService" method="post">
		<p>아이디</p>
		<input type="text" placeholder="아이디는 중복 불가입니다." name="id">
		<p>비밀번호</p>
		<input type="text" placeholder="비밀번호를 입력해주세요." name="pw">
		<p>닉네임</p>
		<input type="text" placeholder="닉네임은 중복 불가입니다." name="nickname">
		<p>이메일</p>
		<input type="text" placeholder="이메일은 중복 불가입니다." name="email">
		<!--  <select name="Field">
                    <option>naver.com</option>
                    <option>daum.net</option>
                    <option>google.com</option>
                    <option>nate.com</option>
                </select>-->
		<p>연락처</p>
		<input type="text" name="id">
		<p>주소 검색</p>
		<input type="text" placeholder="주소를 입력해주세요." name="address"> 
		<!--  <input type="submit" value="주소 검색"><br>-->

		<p>성별</p>
		<td><select name="gender">
				<option>남</option>
				<option>여</option>
		</select></td>
		
		<p>연령대</p>
		<td><select name="age">
				<option>10대</option>
				<option>20대</option>
				<option>30대</option>
				<option>40대</option>
				<option>50대이상</option>
		</select></td><br><br>
		
		<input type="submit" value="작성완료"> <input type="submit" value="작성취소">
	</form>
</body>
</html>