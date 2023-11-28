<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form>
	
		<p>심부름 제목 입력</p>
		<input type="text" name="title">
		
		<p>행정구 선택</p>
		<select name="location_ctgr">
			<option value="광산구">광산구</option>
			<option value="동구">동구</option>
			<option value="서구">서구</option>
			<option value="남구">남구</option>
			<option value="북구">북구</option>
		</select>
		
		<p>심부름 분류</p>
		<select name="errand_ctgr">
			<option value="가사">가사</option>
			<option value="대행">대행</option>
			<option value="팻시터">팻시터</option>
		</select>
		
		<p>요구 시작 시한</p>
		<input type="text" name="req_date">
		
		<p>요구 마감 시한</p>
		<input type="text" name="want_date">
		
		<p>보상할 금액</p>
		<input type="text" name="price">
		
		<p>요청위치</p>
		<input type="text" name="req_location">
		
		<p>내용</p>
		<textarea name="content" style="width:300px; height:200px"></textarea>
		
		<input type="submit" value="요청하기">
		
		
	</form>
</body>
</html>