<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="False"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	div{
		background-color: whitesmoke;
		width: 900px;
		height: 60px;
		border: 1px solid;
	}
	table{
		width: 900px;
		margin: 10px;
	}
	#title{
		width: 600px;
		height: 35px;
		background-color: #c4c4c4;
		border-radius: 10px;
	}
	td{
		text-align: center;
	}
	#status{
		background-color: black;
		color: white;
	}
</style>
</head>
<body><form action="Myinfo" method="post">

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
		
		<c:if test="${fn:contains(param.applyCheck, 0)}">
			지원한 심부름이 없습니다.
		</c:if>
		<c:forEach var="ErrandTitle" items="${ErrandTitleList}">
			<div>
				<table>
					<tr>
						<td id="title">${ErrandTitle.title}</td>
						<td id="status">수락대기<td>
						<button>지원취소</button>
					</tr>
				</table>
			</div>
		</c:forEach>
		
		
	</form>
</body>
</html>