<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	#main{
		background-color: whitesmoke;
		width: 1000px;
		height: 1200px;
		margin: 0 center;
		text-align: center;
	}
	
	.status{
		background-color: black;
		color: white;
	}
</style>
</head>
<body>
	<div id="main">
		<br>
		<h1>제목 : ${ErrandInfo.title}</h1>
		<span>닉네임 : ${nickname}　　　</span>
		<span>행정구 : ${ErrandInfo.location_ctgr}　　　</span>
		<span>심부름 분류 :${ErrandInfo.errand_ctgr}　　　</span>
		<span>보상금액 : ${ErrandInfo.price}</span><br>
		<span>요청일시 : ${ErrandInfo.req_date}　　　</span>
		<span>마감일시 : ${ErrandInfo.want_date}　　　</span>
		<span>요청위치 : ${ErrandInfo.req_location}</span><br>
		<c:choose>
			<c:when test='${fn:contains(ErrandInfo.status, "0")}'>
				<span class="status">매칭대기중</span>
			</c:when>
			<c:when test='${fn:contains(ErrandInfo.status, "1")}'>
				<span class="status">매칭완료</span>
			</c:when>
			<c:when test='${fn:contains(ErrandInfo.status, "2")}'>
				<span class="status">종료</span>
			</c:when>
		</c:choose>
		<div>
			<fieldset>
				<legend>내용</legend>
				${ErrandInfo.content}
			</fieldset>
		</div>
		<c:choose>
			<c:when test="${fn:contains(clientInfo.member_id, ErrandInfo.member_id)}">
				본인이 요청한 심부름입니다.
			</c:when>
			<c:when test="${not empty applyCheck}">
				이미 지원한 심부름입니다.
			</c:when>
			<c:otherwise>
				<form action="ApplyErrandService">
				<input type="hidden" name="message" id="message"> <!-- 스크립트 연결 -->
				<input type="hidden" name="errand_id" value="${ErrandInfo.errand_id}">
				<input type="submit" value="지원하기" id="applyButton">
				</form>
			</c:otherwise>
		</c:choose>
		
	</div>
	
	<script src="assets/js/ApplyErrand.js"></script>
</body>
</html>